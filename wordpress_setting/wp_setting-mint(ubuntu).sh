#!/bin/bash
echo -e "#### 이 프로그램의 저작권은 ⓒLibert Sin 에 있습니다. ####\n 자유로운 배포·수정은 허용하지만 원저작자와 출처를 표시해야 합니다.\n http://photoguraphy.com/\n#############\n\n\n"


ROOT_UID=0
E_NOTROOT=67
 
if [ "$UID" -ne "$ROOT_UID" ]
then
echo "Script have to execute on ROOT mode"
exit $E_NOTROOT
fi




sudo apt install -y php-curl php-gd php-mbstring php-xml php-xmlrpc
sudo apt install -y tasksel
sudo tasksel install lamp-server




sudo mysql_secure_installation




sudo mysql -uroot -p암호 -e "CREATE DATABASE DB이름;"
sudo mysql -uroot -p암호 -e "CREATE USER '유저'@'localhost' IDENTIFIED BY '암호';"
sudo mysql -uroot -p암호 -e "GRANT ALL ON keh.* TO 'keh'@'localhost';"
sudo mysql -uroot -p암호 -e "FLUSH PRIVILEGES;"




sudo ufw allow in "Apache Full"
