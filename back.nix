let
  pkgs = import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/nixos-26.05.tar.gz";
  }) { config.allowUnfree = true; };
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs
    prisma
    prisma-language-server
    typescript
    typescript-language-server
  ];
}
