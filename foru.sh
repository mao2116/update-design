#!/usr/bin/bash

echo ""
read -p $' \e[0m\e[1;92m Input your Username For Banner : \e[0m\e[1;96m\en' user1


read -p $' \e[0m\e[1;92m Input your Username For Welcome: \e[0m\e[1;96m\en' user
echo ""
echo ""
echo -e  $g "Please  Wait  A few Minutes...... "
echo ""
apt update 
apt upgrade -y 
pkg install figlet -y
pkg install python
pip install pyfiglet
pip install termcolor
pkg install ncurses-utils -y 
pkg install ruby -y 
gem install lolcat 
figlet -f big Wait | lolcat

rm -rf $PREFIX/etc/mao.txt
while true
do
  read -p 'Set Password :' mao
  read -p 'Confirm Your Password:' mao2
  if [[ $mao == $mao2 ]]
    then
    touch $PREFIX/etc/mao.txt
    printf $mao2 > $PREFIX/etc/mao.txt
    cd $PREFIX/etc
     xp=$(cat mao.txt)
     echo -e "\033[1;92m$xp Is Your Password"
    break
  else
    echo -e "\033[1;31mPassword Not Matching...."
    echo -e "\033[1;92mType Again"
###File Creat
  fi 
done
tp='[2. ]┌───T─I─M─E───┐┌───D─A─T─E────>

┌─[ 00:00 PM ]──[ D M Y ]
├─[~]
└─>Mao2116[~]:#
'
tpp='[1. ]~$'
echo $tpp |lolcat
echo $tp |lolcat

echo -e "\033[1;92mChose Your Design Type : "
read -p ">>" mao
if [[ $mao == '1' ]]
then
 git clone https://github.com/mao2116/simple-editmao 
  cd simple-editmao
   mv loding.sh /data/data/com.termux/files/usr/etc
  cd $PREFIX/etc
  sed 's+THBD+'$user1'+g' simple-editmao/bash.bashrc > /data/data/com.termux/files/usr/etc/bash.bashrc
   
  sed 's+THBD3+'$user'+g' simple-editmao/wlc.py > /data/data/com.termux/files/usr/etc/wlc.py
  rm-rf simple-editmao
elif [[ $mao == '2' ]]
then
  git clone https://github.com/mao2116/simple-edit
  cd simple-edit
  mv  loding.sh /data/data/com.termux/files/usr/etc
  cd $PREFIX/etc
  sed 's+THBD+'$user1'+g' simple-edit/bash.bashrc > /data/data/com.termux/files/usr/etc/bash.bashrc
  sed 's+THBD3+'$user'+g' simple-edit/wlc.py > /data/data/com.termux/files/usr/etc/wlc.py
  rm -rf simple-edit
fi
figlet -f slant Mao2116 | lolcat
figlet -f small BDhackers009 | lolcat
echo -e '\033[0;0m'
