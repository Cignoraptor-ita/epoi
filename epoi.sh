
echo " "
echo -e "\e[01;42m____________________\e[00;41m_________\e[00m"
echo " "
echo -e "\e[01;32mEXTRACT PARASITE OF INTEREST\e[00m by \e[00;34mCignoraptor\e[00m"

echo " "

echo -e "Extract informations and words considerated \e[00;31mmalicious\e[00m in open source resources\e[00m"
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

grep --color -oR -i '[[:alnum:]+\.\_\-]*@[[:alnum:]+\.\_\-]*' * | sort | uniq -i

echo " "
echo -e "\e[00;34mLinks\e[00m"

#grep http $filer | sed 's/http/\nhttp/g' | grep ^http | sed 's/\(^http[^ <]*\)\(.*\)/\1/g' | grep http | sort -u
sleep 0.3

#grep -o '[a-zA-Z0-9./:-]\{1,30\}\.*/[[:alnum:]+\.\_\/\?\&\=\-]*' $filer | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.net*/[[:alnum:]+\.\_\/\?\&\=\-]*' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.com*/[[:alnum:]+\.\_\/\?\&\=\-]*' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.edu*/[[:alnum:]+\.\_\/\?\&\=\-]*' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.biz*/[[:alnum:]+\.\_\/\?\&\=\-]*' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.org*/[[:alnum:]+\.\_\/\?\&\=\-]*' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.it*/[[:alnum:]+\.\_\/\?\&\=\-]*' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.cc*/[[:alnum:]+\.\_\/\?\&\=\-]*' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.to*/[[:alnum:]+\.\_\/\?\&\=\-]*' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.info*/[[:alnum:]+\.\_\/\?\&\=\-]*' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.bid*/[[:alnum:]+\.\_\/\?\&\=\-]*' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.biz*/[[:alnum:]+\.\_\/\?\&\=\-]*' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.de*/[[:alnum:]+\.\_\/\?\&\=\-]*' *| sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.li*/[[:alnum:]+\.\_\/\?\&\=\-]*' * | sort | uniq -i




echo " "
echo -e "\e[00;34mDomains\e[00m"

#grep -o '[a-zA-Z0-9.-]\{1,20\}\.[a-z]\{1,3\}' $filer
grep --color -oR -i '[a-zA-Z0-9.-]\{1,20\}\.net' *
grep --color -oR -i '[a-zA-Z0-9.-]\{1,20\}\.com' *
grep --color -oR -i '[a-zA-Z0-9.-]\{1,20\}\.org' *
grep --color -oR -i '[a-zA-Z0-9.-]\{1,20\}\.it' *
grep --color -oR -i '[a-zA-Z0-9.-]\{1,20\}\.cc' *
grep --color -oR -i '[a-zA-Z0-9.-]\{1,20\}\.de' *
grep --color -oR -i '[a-zA-Z0-9.-]\{1,20\}\.biz' *
grep --color -oR -i '[a-zA-Z0-9.-]\{1,20\}\.edu' *
grep --color -oR -i '[a-zA-Z0-9.-]\{1,20\}\.bid' *
grep --color -oR -i '[a-zA-Z0-9.-]\{1,20\}\.info' *
grep --color -oR -i '[a-zA-Z0-9.-]\{1,20\}\.li' *

echo " "

echo -e "\e[00;34mJS ext\e[00m"



grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.net*/[[:alnum:]+\.\_\/\?\&\=\-]*\.js' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.com*/[[:alnum:]+\.\_\/\?\&\=\-]*\.js' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.edu*/[[:alnum:]+\.\_\/\?\&\=\-]*\.js' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.biz*/[[:alnum:]+\.\_\/\?\&\=\-]*\.js' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.org*/[[:alnum:]+\.\_\/\?\&\=\-]*\.js' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.it*/[[:alnum:]+\.\_\/\?\&\=\-]*\.js' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.cc*/[[:alnum:]+\.\_\/\?\&\=\-]*\.js' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.to*/[[:alnum:]+\.\_\/\?\&\=\-]*\.js' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.info*/[[:alnum:]+\.\_\/\?\&\=\-]*\.js' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.bid*/[[:alnum:]+\.\_\/\?\&\=\-]*\.js' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.biz*/[[:alnum:]+\.\_\/\?\&\=\-]*\.js' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.de*/[[:alnum:]+\.\_\/\?\&\=\-]*\.js' * | sort | uniq -i
grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.li*/[[:alnum:]+\.\_\/\?\&\=\-]*\.js' * | sort | uniq -i


echo -e "\e[00;34mBase64 encoding\e[00m"
grep --color -oR -i base64 *

echo " "
echo -e "\e[00;33mSearching malicious words \e[00m"
echo " "
grep --color -oR -w fclose *
grep --color -oR -w feof *
grep --color -oR -w fopen *
grep --color -oR -w socket *
grep --color -oR -w clone *
grep --color -oR -w daemon *
grep --color -oR -w "kill" *
grep --color -oR -i random_r *
grep --color -oR -w connect *
grep --color -oR -w sendto *
grep --color -oR -w listen *
grep --color -oR -w openlo *
grep --color -oR -i "chmod 0755" *
grep --color -oR -w "system()" *
echo " "
echo -e "\e[00;33mSearching for ransomware actions \e[00m"

grep --color -oR -w ".enc" *
grep --color -oR -w whiteKey *
grep --color -oR -i ransom *
grep --color -oR -i RANSOM *
grep --color -oR -w aes-128-cbc *
grep --color -oR -w salt *
grep --color -oR -i bitcoin *

echo " "

echo -e "\e[00;31mHIDDEN FILES\e[00m"
echo " "
ls -ld .?*
ls -d */ | cut -f1 -d '/' > cart.txt

for line in `cat cart.txt`; do

cd $line

ls -ld .?*
cd - > /dev/null

done

rm cart.txt

echo " "
echo "========================"

echo -e "\e[01;33mFINE\e[00m..."



