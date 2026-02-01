import java.util.concurrent.TimeUnit

plugins {
    id("com.android.application")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.world_flags_example"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_24
        targetCompatibility = JavaVersion.VERSION_24
    }

    defaultConfig {
        // Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.world_flags_example"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

kotlin {
    compilerOptions {
        jvmTarget = org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_24
    }
}

flutter {
    source = "../.."
}

/* ------- Helper function to run shell commands ------- */
fun String.runCommand(workingDir: File = File(".")): String? = try {
    ProcessBuilder(*split(" ").toTypedArray())
        .directory(workingDir)
        .redirectOutput(ProcessBuilder.Redirect.PIPE)
        .redirectError(ProcessBuilder.Redirect.PIPE)
        .start()
        .apply { waitFor(10, TimeUnit.SECONDS) }
        .inputStream.bufferedReader().readText().trim()
} catch (e: Exception) {
    null
}

// Captured values from new Variant API
var capturedCompileSdk: Int? = null
var capturedMinSdk: Int? = null
var capturedTargetSdk: Int? = null
var capturedNdkVersion: String? = null
var capturedMinifyEnabled: Boolean = false
var capturedShrinkResources: Boolean = false

androidComponents {
    finalizeDsl { ext ->
        capturedCompileSdk = ext.compileSdk
        capturedMinSdk = ext.defaultConfig.minSdk
        capturedTargetSdk = ext.defaultConfig.targetSdk
        capturedNdkVersion = ext.ndkVersion
        val bt = ext.buildTypes.findByName("profile") ?: ext.buildTypes.getByName("release")
        capturedMinifyEnabled = bt.isMinifyEnabled
        capturedShrinkResources = bt.isShrinkResources
    }
}

/* ------- Minimal post-build augmentation of PROFILE output-metadata.json ------- */
val augmentOutputMetadataProfile by tasks.registering {
    doLast {
        // Pick whichever APK exists (split-per-abi or fat)
        val fatApk = layout.buildDirectory.file("outputs/flutter-apk/app-profile.apk").get().asFile
        val abiApk = layout.buildDirectory.file("outputs/flutter-apk/app-arm64-v8a-profile.apk").get().asFile
        val apk = when {
            abiApk.exists() -> abiApk
            fatApk.exists() -> fatApk
            else -> return@doLast
        }

        val meta = layout.buildDirectory.file("outputs/apk/profile/output-metadata.json").get().asFile
        if (!meta.exists()) return@doLast

        val size = apk.length()
        val flutterVer = "fvm flutter --version".runCommand(rootProject.projectDir)
            ?.lines()
            ?.firstOrNull()
            ?.removePrefix("Flutter ")
            ?: "flutter --version".runCommand(rootProject.projectDir)
                ?.lines()
                ?.firstOrNull()
                ?.removePrefix("Flutter ")
            ?: "unknown"

        val gradleVer = gradle.gradleVersion

        // Android config (from new Variant / DSL capture)
        val compileSdkNum = capturedCompileSdk
        val minSdk = capturedMinSdk
        val targetSdk = capturedTargetSdk
        val ndkVer = capturedNdkVersion
        val minifyEnabled = capturedMinifyEnabled
        val shrinkResources = capturedShrinkResources

        // Pretty-print: insert a comma before the closing brace and append nicely formatted fields
        val original = meta.readText()
        val trimmed = original.trimEnd()
        val insertionPoint = trimmed.lastIndexOf('}')
        if (insertionPoint == -1) return@doLast

        val safeFlutter = flutterVer.replace("\"", "\\\"")
        val added = """,
  "bundleSizeBytes": $size,
  "flutterVersion": "$safeFlutter",
  "gradleVersion": "$gradleVer",
  "compileSdk": ${compileSdkNum ?: "null"},
  "minSdk": ${minSdk ?: "null"},
  "targetSdk": ${targetSdk ?: "null"},
  "ndkVersion": ${if (ndkVer != null) "\"$ndkVer\"" else "null"},
  "minifyEnabled": $minifyEnabled,
  "shrinkResources": $shrinkResources
}
""".trimEnd()

        val patched = buildString {
            append(trimmed.substring(0, insertionPoint))
            append(added)
        }

        // Write atomically
        val tmp = meta.resolveSibling(meta.name + ".tmp")
        tmp.writeText(patched)
        if (!tmp.renameTo(meta)) {
            meta.writeText(patched)
            tmp.delete()
        }
        logger.lifecycle("Augmented ${meta.absolutePath} with size/toolchain/config fields (profile)")
    }
}

// Bind finalizer when assembleProfile is created
tasks.whenTaskAdded {
    if (this.path == ":app:assembleProfile") {
        this.finalizedBy(augmentOutputMetadataProfile)
    }
}

// Fallback: finalize any Flutter-side profile build proxies
val postAssembleProfileCheck by tasks.registering {
    doLast {
        val apkFat = layout.buildDirectory.file("outputs/flutter-apk/app-profile.apk").get().asFile
        val apkAbi = layout.buildDirectory.file("outputs/flutter-apk/app-arm64-v8a-profile.apk").get().asFile
        val meta = layout.buildDirectory.file("outputs/apk/profile/output-metadata.json").get().asFile
        if ((apkFat.exists() || apkAbi.exists()) && meta.exists()) {
            tasks.named("augmentOutputMetadataProfile").get().actions.forEach {
                it.execute(tasks.named("augmentOutputMetadataProfile").get())
            }
        }
    }
}

tasks.matching { it.name.contains("compileFlutterBuild") && it.name.endsWith("Profile") }
    .configureEach { finalizedBy(postAssembleProfileCheck) }
