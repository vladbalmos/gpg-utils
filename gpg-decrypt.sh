#!/bin/bash

# export GPG_DEFAULT_USER_ID='You Name' # this goes into .bashrc

function show_usage()
{
    command=$(basename $0)
    echo "Usage: $command [-d] /path/to/file/or/folder [destination]"
    echo -e "\t -d Untar decrypted file"
}

if [ $# -lt 1 ]; then
    show_usage
    exit -1
fi

if [ "$1" == '-d' ]; then
    DEFLATE=1
fi
shift

SRC="$1"

if [ ! -z "$2" ]; then
    DEST="$2"
else
    DEST=${SRC%.gpg}
fi

gpg -r "$GPG_DEFAULT_USER_ID" --output "$DEST" -d "$SRC"

if [ $DEFLATE -eq 1 ]; then
    tar -xvf "$DEST"
fi
