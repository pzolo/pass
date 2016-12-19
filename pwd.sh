#!/bin/bash 

if [ "$1" -eq "0" ] ; then 
	echo "Creating tarball of ./pass/*"
	tar -czf pass.tgz pass/*
	echo "Please select a pgp passphrase to encrypt the file"
	gpg -c pass.tgz
	echo "Deleting pass.tgz"
	rm pass.tgz
	echo "Deleting folder"
	rm -rf pass/ 
	echo "Done..!"
	fortune
fi

if [ "$1" -eq "1" ] ; then 
	echo "Decrypt pass.tgz.gpg, please type passphrase"
	gpg pass.tgz.gpg
	echo "Extracting tarball pass.tgz"
	tar -xzf pass.tgz
	echo "Deleting pass.tgz.gpg"
	rm pass.tgz.gpg
	echo "Done..!" 
	fortune ;
fi 
