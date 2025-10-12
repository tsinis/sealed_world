{pkgs, branch ? "main", repo ? "https://github.com/tsinis/sealed_world", ...}: {
    packages = [
        pkgs.curl
        pkgs.gnutar
        pkgs.xz
        pkgs.git
        pkgs.busybox
        pkgs.flutter
    ];
    bootstrap = ''
        mkdir "$out"
        git clone --depth 1 -b "${branch}" "${repo}" "$out/temp_repo"
        cp -rf "$out/temp_repo/." "$out/"
        rm -rf "$out/temp_repo"
        chmod -R +w "$out"
        rm -rf "$out/packages/world_countries/example/.idx/idx-template.nix"
        rm -rf "$out/packages/world_countries/example/.idx/idx-template.json"
        mkdir -p "$out/.idx"
        if [ -f ${./dev.nix} ]; then
            install --mode u+rw ${./dev.nix} "$out/.idx/dev.nix"
        fi
        chmod -R u+w "$out"
    '';
}