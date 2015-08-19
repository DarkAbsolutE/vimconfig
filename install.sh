#!/bin/bash

if [ -a $HOME/.vimrc ]
then
  echo "Do you wish to backup your .vimrc file?"
  select yn in "Yes" "No"; do
      case $yn in
          Yes )
            echo "Backup .vimrc file to .vimrc_old"
            mv $HOME/.vimrc $HOME/.vimrc_old
          break;;
          No )
            rm $HOME/.vimrc
            exit;;
      esac
  done
fi

echo "installing all vim plugins defined on .vimrc file"
vim +PluginInstall +qall
