# WELCOME TO SANTOS DOTFILES


[Based on this artciel](https://www.atlassian.com/git/tutorials/dotfiles)

1. To use these dotfiles on a new machines please run the following commands from your terminal.
    -  ```bash
git clone --bare https://github.com/asantoss/dotfiles.git  $HOME/.cfg
function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
```



