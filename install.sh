#!/bin/bash

CUR=$(cd $(dirname $0); pwd)
FILES=$CUR/.*

IGNORE_FILES[0]=$CUR/.
IGNORE_FILES[1]=$CUR/..
IGNORE_FILES[1]=$CUR/.git
IGNORE_FILES[1]=$CUR/.gitignore
# IGNORE_FILES=($CUR/. $CUR/.. $CUR/.git $CUR/.gitignore)

for file in ${FILES[@]}; do
	if [[ ! ${IGNORE_FILES[@]} =~ $file ]]; then
		TARGET=$HOME/$(basename $file)
		if [ -e $TARGET ]; then
			if [ -L $TARGET ]; then
				unlink $TARGET
				echo "unlink '$TARGET'"
			else
				if [ ! -e $HOME/.backups ]; then
					mkdir $HOME/.backups
					echo "create directory '$HOME/.backups/'"
				fi
				mv $TARGET $HOME/.backups/
				echo "backup '$TARGET' to '$HOME/.backups/'" 
			fi
		fi
		ln -s $file $TARGET
		echo "link '$file' to '$TARGET'"
	fi
done
