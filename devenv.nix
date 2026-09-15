{ pkgs, ... }:

{
  packages = [
    pkgs.hugo
    pkgs.git
  ];

  scripts.dev.exec = ''
    hugo server --buildDrafts --buildFuture --navigateToChanged
  '';

  scripts.build.exec = ''
    rm -rf public
    hugo build
  '';

  enterShell = ''
    echo "🚀 Hugo environment"
    echo "Run 'dev' to start Hugo"
  '';
}
