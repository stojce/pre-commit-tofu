{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "precommit-tofu";
	buildInputs = with pkgs; [
        terraform-docs
        tflint
        trivy
        opentofu
	];

  shellHook = ''
  '';
}
