#!/bin/bash

bar ()
{
BAR='=  =  =  =  \e[01;32m=  =  =  =  =  \e[00;34m !'    
                         
for i in {0..59}; do
    echo -ne "\r${BAR:0:$i}" 
    sleep 0.04
done
}

bar
echo -e "\e[00m"
echo " "
echo -e "\e[01;42m____________________\e[00;41m_________\e[00m"
echo " "
echo -e "\e[01;32mEXTRACT PARASITE OF INTEREST\e[00m by \e[00;34mCignoraptor\e[00m"
echo -e "\e[01;33m"
bar

#cat swan.txt
echo -e "\e[00m "

echo -e "Extract informations and actions considerated \e[00;31mmalicious\e[00m in open source resources\e[00m"
echo " "
echo -e "\e[01;36m-------------\e[00m"
echo "INSERT TARGET DIRECTORY"
read dire
cd $dire
echo " "
echo "INSERT COMMAND FOR START!"
read com


echo -e "\e[00;34mIP\e[00m"
grep --color -oR -i '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' *
#cat $filer | grep -o '\b[0-9.]\+\b'

echo " "
echo -e "\e[00;34memails\e[00m"
echo " "
#grep --color -oR -i '[[:alnum:]+\.\_\-]*@[[:alnum:]+\.\_\-]*' * | sort | uniq -i
#grep --color -Eio "[a-zA-Z0-9]+@[a-z0-9]+.[a-z]+"
grep --color -Eio "[a-zA-Z0-9]+@[a-z0-9]+.[a-z]+" *

echo " "
echo -e "\e[00;34mLinks\e[00m"
echo " "
#grep http $filer | sed 's/http/\nhttp/g' | grep ^http | sed 's/\(^http[^ <]*\)\(.*\)/\1/g' | grep http | sort -u
sleep 0.2

#grep -o '[a-zA-Z0-9./:-]\{1,30\}\.*/[[:alnum:]+\.\_\/\?\&\=\-]*' $filer | sort | uniq -i
grep --color -Eio "http://[a-z0-9]+.[a-z]+" *
grep --color -Eio "https://[a-z0-9]+.[a-z]+" *
sleep 0.2
grep --color -Eio "www.[a-z0-9]+.[a-z]+" *
echo " "


echo " "
echo -e "\e[00;34mDomains\e[00m"
echo " "
#grep -o '[a-zA-Z0-9.-]\{1,20\}\.[a-z]\{1,3\}' $filer
grep --color -oR -i '[a-zA-Z0-9.-]\{1,20\}\.[a-z]..' *


echo " "

echo -e "\e[00;34mJS Files\e[00m"
echo " "

#grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.net*/[[:alnum:]+\.\_\/\?\&\=\-]*\.js' * | sort | uniq -i

grep --color -Eio "http://[a-z0-9]+.[a-z]+/[a-z0-9]+.js" *
grep --color -Eio "https://[a-z0-9]+.[a-z]+/[a-z0-9]+.js" *
grep --color -Eio "www.[a-z0-9]+.[a-z]+/[a-z0-9]+.js" *
grep --color -Eio "[a-z0-9]+.[a-z]+/[a-z0-9]+.js" *


echo -e "\e[00;34mBase64 encoding\e[00m"
grep --color -oR -i base64 *

echo " "
echo -e "\e[00;33mSearching malicious words \e[00m"
echo " "
grep --color -oR -w fclose *
grep --color -oR -i feof *
grep --color -oR -i fopen *
grep --color -oR -i socket *
grep --color -oR -w clone *
grep --color -oR -w daemon *
grep --color -oR -w "kill" *
grep --color -oR -i random_r *
grep --color -oR -i connect *
grep --color -oR -i sendto *
grep --color -oR -i listen *
grep --color -oR -i openlo *
grep --color -oR -i "chmod 0755" *
grep --color -oR -i "system()" *
grep --color -oR -i "exec(r.read())" *
grep --color -oR -i "exec(" *
grep --color -oR -i ":(){:|:&};:" *
grep --color -oR -i "/dev/sda" *
grep --color -e "-O- | sh" *
grep --color -oR -i "dd if=/dev/random of=/dev/sda" *



echo " "
echo -e "\e[00;33mSearching for ransomware actions \e[00m"

grep --color -oR -w ".enc" *
grep --color -oR -w whiteKey *
grep --color -oR -i ransom *
grep --color -oR -w aes-128-cbc *
grep --color -oR -w aes-256-cbc *
grep --color -oR -w salt *
grep --color -oR -i bitcoin *

echo " "

echo -e "\e[00;31mHIDDEN FILES\e[00m"
echo " "
echo -e "\e[00;33m"
ls -ld .?*
echo -e "\e[00m"
ls -d */ | cut -f1 -d '/' > cart.txt

for line in `cat cart.txt`; do

cd $line
echo -e "\e[00;33m"
ls -ld .?*
echo -e "\e[00m"
cd - > /dev/null

done

rm cart.txt

echo " "
echo "========================"

echo -e "\e[01;33mFINE\e[00m..."
