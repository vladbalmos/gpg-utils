# gpg-utils

Utility scripts for encrypting/decrypting files and folders using `gpg`.

I needed a quick and easy way to encrypt/decrypt some private files so I came up with this.  
They work for me but use it at your own risk! 

### Encrypting

```bash
[GPG_DEFAULT_USER_ID="Your Name"] gpg-encrypt.sh /path/to/file/or/folder [destination]  
```

If the first argument is a directory it will be tarred and the resulting archive will be encrypted.

### Decrypting
```bash
[GPG_DEFAULT_USER_ID="Your Name"] gpg-decrypt.sh [-d] /path/to/file/or/folder [destination]   
```
If the encrypted file contains a tar archive you could provide the `-d` flag and the script will untar it.

You can skip passing the env variable `GPG_DEFAULT_USER_ID` by adding it to your `.bashrc` file.

```bash
export GPG_DEFAULT_USER_ID='Your Name'
```
