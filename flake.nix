{
  description = "Development tools for nvim-srcerite";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/78cb77b29d37a9663e05b61abb4fa09465da4b70";
  inputs.flake-utils.url = "github:numtide/flake-utils/74f7e4319258e287b0f9cb95426c9853b282730b";

  outputs = { self, nixpkgs, flake-utils }:
  flake-utils.lib.eachDefaultSystem (system:
  let
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {
    devShell = import ./shell.nix { inherit pkgs; };
  });
}
