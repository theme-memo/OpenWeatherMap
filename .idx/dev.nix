{ pkgs, ... }: {
  channel = "stable-25.05";
  packages = [
    pkgs.nodejs_24
    pkgs.corepack_24
    pkgs.openssh
    pkgs.gnupg
  ];
  env = { };
  idx = {
    extensions = [
      "mhutchie.git-graph"
      "oderwat.indent-rainbow"
      "esbenp.prettier-vscode"
      "google.gemini-cli-vscode-ide-companion"
      "EditorConfig.EditorConfig"
      "dbaeumer.vscode-eslint"
    ];
    previews = {
      enable = false;
    };
    workspace = {
      onCreate = {
        default.openFiles = [ ".idx/dev.nix" "README.md" ];
      };
      onStart = {
        default.openFiles = [ ".idx/dev.nix" "README.md" ];
      };
    };
  };
}
