{ pkgs, ... }:

{
  # https://devenv.sh/packages/
  packages = [ pkgs.git ];

  # https://devenv.sh/tasks/
  # devenv tasks run update:upstream
  tasks."update:upstream" = {
    description = "Update upstream emacs-kick and push to my fork";
    exec = ''
      git fetch upstream
      git checkout master
      git merge upstream/master
      git push origin master
      git checkout -
    '';
    };
}
