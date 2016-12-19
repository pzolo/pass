# pass
Quick and easy way to encrypt a folder 

The script creates a tarball of pass/* and encrypts it with pgp. 
Option 0 to encrypt 
Option 1 to decrypt 

== ENCRYPT ==
ptosiani@xps ~/Desktop/pandora/passw $ ./pwd.sh 0
Creating tarball of ./pass/*
Please select a gpg passphrase to encrypt the file
Deleting pass.tgz  
Deleting folder
Done..!
I don't know half of you half as well as I should like; and I like less
than half of you half as well as you deserve.
		-- J. R. R. Tolkien
ptosiani@xps ~/Desktop/pandora/passw $ ll
total 16
drwxrwxr-x  2 ptosiani ptosiani 4096 Dec 19 17:53 ./
drwxrwxr-x 17 ptosiani ptosiani 4096 Dec 19 17:47 ../
-rw-rw-r--  1 ptosiani ptosiani  751 Dec 19 17:53 pass.tgz.gpg
-rwx------  1 ptosiani ptosiani  531 Dec 19 17:53 pwd.sh*




== DECRYPT ==
ptosiani@xps ~/Desktop/pandora/passw $ ./pwd.sh 1
Decrypt pass.tgz.gpg, please type passphrase
gpg: AES encrypted data
gpg: encrypted with 1 passphrase
File `pass.tgz' exists. Overwrite? (y/N) y
Extracting tarball pass.tgz
Deleting pass.tgz.gpg and pass.tgz
Done..!
You will have a long and unpleasant discussion with your supervisor.
ptosiani@xps ~/Desktop/pandora/passw $ ll
total 16
drwxrwxr-x  3 ptosiani ptosiani 4096 Dec 19 17:54 ./
drwxrwxr-x 17 ptosiani ptosiani 4096 Dec 19 17:47 ../
drwxrwxr-x  2 ptosiani ptosiani 4096 Dec 19 17:54 pass/
-rwx------  1 ptosiani ptosiani  531 Dec 19 17:53 pwd.sh*

 
