{
  description = "Development tools for nvim-srcerite";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
  flake-utils.lib.eachDefaultSystem (system:
  let
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {
    devShell = pkgs.mkShell {
      buildInputs = [
        pkgs.selene
        # pkgs.stylua
      ];
    };
  });
}
