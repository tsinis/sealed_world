import java.util.concurrent.TimeUnit

plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "world.countries.world_countries_example"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_24
        targetCompatibility = JavaVersion.VERSION_24
    }

    defaultConfig {
        // Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "world.countries.world_countries_example"
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
        jvmTarget.set(org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_24)
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

        // Android config
        val ext = project.extensions.getByType(com.android.build.gradle.AppExtension::class.java)
        val compileSdkRaw = ext.compileSdkVersion // e.g., "android-36" or "36"
        val compileSdkNum = compileSdkRaw?.removePrefix("android-")
        val defaultConfig = ext.defaultConfig
        val minSdk = defaultConfig.minSdkVersion?.apiLevel
        val targetSdk = defaultConfig.targetSdkVersion?.apiLevel
        val ndkVer = ext.ndkVersion

        // Read flags from profile buildType if present; otherwise fallback to release
        val hasProfile = ext.buildTypes.names.contains("profile")
        val profileBt = if (hasProfile) ext.buildTypes.getByName("profile") else ext.buildTypes.getByName("release")
        val minifyEnabled = profileBt.isMinifyEnabled
        val shrinkResources = profileBt.isShrinkResources

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
  "ndkVersion": ${ndkVer?.let { "\"$it\"" } ?: "null"},
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
