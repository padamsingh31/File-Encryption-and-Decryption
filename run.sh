#!/bin/bash
RED='\033[0;32m'
NC='\033[0m'

echo -e "${RED}[*] This is Simple File Encryption and Decryption ${NC}"
echo -e "${RED}[*] Please Choose what you want ${NC}"
choice="Encrypt Decrypt"
select option in $choice; do
	if [ $REPLY = 1 ]
then
	echo -e "${RED}[*] You have selected Encryption ${NC}"
	echo -e "${RED}[*] Please Enter the file name ${NC}"
	FILE=`zenity --file-selection --title="Select a File"`	
	echo "you selected $FILE"
	(
  echo 25
  echo "# Setting up..."
  sleep 2

  echo 30
  echo "# Reading files..."
  sleep 2

  echo 70
  echo "# Creating content..."
  sleep 1

  echo 100
  echo "# Done!"
) | zenity --title "Progress bar example" --progress --auto-kill
	#read file1;
	gpg -c $FILE
	exit 0
else
	echo -e "${RED}[*] You have selected Decryption ${NC}"
	echo -e "${RED}[*] Please enter the file name ${NC}"
	FILE2=`zenity --file-selection --title="Select a File"`	
	echo "you selected $FILE2"
	#read file2;
	(
  echo 25
  echo "# Setting up..."
  sleep 2

  echo 30
  echo "# Reading files..."
  sleep 2

  echo 70
  echo "# Creating content..."
  sleep 1

  echo 100
  echo "# Done!"
) | zenity --title "Progress bar example" --progress --auto-kill
	gpg -d $FILE2
	exit 0
fi
done
