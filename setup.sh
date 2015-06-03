#!/bin/bash

# "sudo" is needed if not root
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

ln -vs $DIR/gpg-encrypt.sh /usr/local/bin/gpg-encrypt.sh 
ln -vs $DIR/gpg-decrypt.sh /usr/local/bin/gpg-decrypt.sh 
echo "Don't forget to set GPG_DEFAULT_USER_ID in your .bashrc"
