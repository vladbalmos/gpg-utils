#!/bin/bash

# export GPG_DEFAULT_USER_ID='You Name' # this goes into .bashrc

function show_usage()
{
    command=$(basename $0)
    echo "Usage: $command /path/to/file/or/folder [destination]"
    echo "If first argument is a directory it will be tarred first"
}

if [ $# -lt 1 ]; then
    show_usage
    exit -1
fi

# directory
if [ -d "$1" ]; then
    if [ ! -z "$2" ]; then
        TARGET="$2"
    else
        TARGET="$1"
        TARGET=${TARGET%/}".tar.gpg"
    fi
    tar -cf - "$1" | gpg -e -r "$GPG_DEFAULT_USER_ID" --output "$TARGET"
    echo "Encrypted directory $1 to $TARGET"

    exit 0
fi

# file
if [ ! -z "$2" ]; then
    TARGET="$2"
else
    TARGET="$1.gpg"
fi
gpg -r "$GPG_DEFAULT_USER_ID" --output "$TARGET" -e "$1"
echo "Encrypted file $1 to $TARGET"
