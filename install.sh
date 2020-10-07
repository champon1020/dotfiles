#!/bin/bash

CUR=$(cd $(dirname $0); pwd)
FILES=$CUR/.*
BACKUPDIR=$HOME/.dotbackups

IGNORE_FILES[0]=$CUR/.
IGNORE_FILES[1]=$CUR/..
IGNORE_FILES[2]=$CUR/.git
IGNORE_FILES[3]=$CUR/.gitignore
IGNORE_FILES[4]=$CUR/.config
# IGNORE_FILES=($CUR/. $CUR/.. $CUR/.git $CUR/.gitignore $CUR/.config)

echo "HOME DOTFILES"
for path in ${FILES[@]}; do
  # If path is included in IGNORE_FILES, ignore the process.
	if [[ ! ${IGNORE_FILES[@]} =~ $path ]]; then
    # Target path.
		TARGET=$HOME/$(basename $path)

    # If target has already existed,
    #   - If target has been linked, unlink it.
    #   - If target has not been linked, backup existed file to $BACKUPDIR.
		if [ -e $TARGET ]; then
			if [ -L $TARGET ]; then
				unlink $TARGET
				echo "unlink '$TARGET'"
			else
				if [ ! -e $BACKUPDIR ]; then
					mkdir $BACKUPDIR
					echo "create directory '$BACKUPDIR'"
				fi
				mv $TARGET $BACKUPDIR/
				echo "backup '$TARGET' to '$BACKUPDIR/'" 
			fi
		fi

    # Link.
    ln -s $path $TARGET
	  echo "link '$path' to '$TARGET'"
	fi
done


echo "UNDER DOTCONFIG"
DOTCONFIGS=$CUR/.config/*
for path in ${DOTCONFIGS[@]}; do
  # Target path.
  TARGET=$HOME/.config/$(basename $path)
  
  if [ -e $TARGET ]; then
    if [ -L $TARGET ]; then
      unlink $TARGET
      echo "unlink '$TARGET'"
    else
      if [ ! -e $BACKUPDIR/.config ]; then
        mkdir $BACKUPDIR/.config
        echo "craete directory '$BACKUPDIR/.config'"
      fi
      mv $TARGET $BACKUPDIR/.config
      echo "backup '$TARGET' to '$BACKUPDIR/.config'"
    fi
  fi

  # Link.
  ln -s $path $TARGET
  echo "link '$path' to '$TARGET'"
done


# Emacs settings.
if [ ! -e ".emacs.d/public_repos" ]; then
  mkdir ".emacs.d/public_repos"
  echo "create directory .emacs.d/public_repos"
fi
