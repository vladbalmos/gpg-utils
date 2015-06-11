# gpg-utils
Utility scripts for encrypting/decrypting files and folders using gpg.  
I needed a quick and easy way to encrypt/decrypt some private files so I came up with this.  
They work for me but use it at your own risk! 

Encrypting:  
Usage: gpg-encrypt.sh /path/to/file/or/folder [destination]  
If first argument is a directory it will be tarred first   

Decrypting:  
Usage: gpg-decrypt.sh [-d] /path/to/file/or/folder [destination]   
	     -d Untar decrypted file 
