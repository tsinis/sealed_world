import "package:rw_git/rw_git.dart";

import "../generators/helpers/extensions/package_associations_extension.dart";
import "../models/package.dart";
import "io_utils.dart";

final class NetworkUtils {
  const NetworkUtils();

  static const _git = "git";

  Future<Directory> cloneRepository(String repoUrl) async {
    final gitUrl = repoUrl.endsWith(".$_git") ? repoUrl : "$repoUrl.$_git";
    final repositoryName = basenameWithoutExtension(gitUrl);

    final root = Directory.current.path;
    final directory = Directory(join(root, repositoryName));
    if (directory.existsSync()) directory.deleteSync(recursive: true);
    directory.createSync(recursive: true);
    await RwGit().clone(root, gitUrl);

    return directory;
  }
}

Future<void> main() async {
  final clonedDir = await const NetworkUtils()
      .cloneRepository(Package.sealedLanguages.umpirskyRepoUrl);

  IoUtils()
    ..moveJsonFiles(clonedDir)
    ..deleteDirectory(clonedDir);
}
