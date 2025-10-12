# To learn more about how to use Nix to configure your environment
# see: https://firebase.google.com/docs/studio/customize-workspace
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-25.05"; # or "unstable"
  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.jdk23
    pkgs.unzip
  ];
  # Sets environment variables in the workspace
  env = {
    PATH = ["/home/user/.pub-cache/bin"  "/home/user/flutter/bin" "./.flutter-sdk/flutter/bin"];
  };
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      "Dart-Code.flutter"
      "Dart-Code.dart-code"
    ];
    workspace = {
      # Runs when a workspace is first created with this `dev.nix` file
      onCreate = {
        upgradeFlutter = "flutter upgrade";
        installDependencies = "cd packages/world_countries/example && flutter pub get";
      };
      # Optionally run when the workspace is (re)started
      onStart = {
        syncDependencies = "cd packages/world_countries/example && flutter pub get";
      };
    };
    # Enable previews and customize configuration
    previews = {
      enable = true;
      previews = {
        web = {
          command = ["flutter" "run" "--machine" "-d" "web-server" "--web-hostname" "0.0.0.0" "--web-port" "$PORT"];
          manager = "flutter";
          cwd = "packages/world_countries/example";
        };
        android = {
          command = ["flutter" "run" "--machine" "-d" "android" "-d" "localhost:5555"];
          manager = "flutter";
          cwd = "packages/world_countries/example";
        };
      };
    };
  };
}
