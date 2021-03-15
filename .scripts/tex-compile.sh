#!/bin/bash

if [ $# != 1 ]; then
	echo "ERROR: the number of arguments must be 1, but got $#"
	exit 1
fi

FILE=$1

# tex to dvi
platex "${FILE}"

# dvi to pdf
dvipdfmx "${FILE%.*}.dvi"
