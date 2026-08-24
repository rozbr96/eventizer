let
  pkgs = import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/nixos-26.05.tar.gz";
  }) { config.allowUnfree = true; };
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    emmet-language-server
    nodejs
    typescript
    typescript-language-server
  ];
}
