#!/bin/bash

if [ $# != 1 ]; then
	echo "ERROR: the number of arguments must be 1, but got $#"
	exit 1
fi

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  cat $1 | xsel --clipboard --input
elif [[ "$OSTYPE" == "darwin"* ]]; then
  pbcopy < $1
fi

echo "copied $1 to clipboard"
