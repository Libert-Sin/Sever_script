#!/bin/bash
echo -e "#### 이 프로그램의 저작권은 ⓒLibert Sin 에 있습니다. ####\n 자유로운 배포·수정은 허용하지만 원저작자와 출처를 표시해야 합니다.\n http://photoguraphy.com/\n#############\n\n\n"


ROOT_UID=0
E_NOTROOT=67
 
if [ "$UID" -ne "$ROOT_UID" ]
then
echo "Script have to execute on ROOT mode"
exit $E_NOTROOT
fi




sudo apt install -y apache2 apache2-utils php libapache2-mod-php php-mysql php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip mariadb-server mariadb-client

sudo mysql_secure_installation

sudo mysql -uroot -p암호 -e "CREATE DATABASE DB이름;"
sudo mysql -uroot -p암호 -e "CREATE USER '유저'@'localhost' IDENTIFIED BY '암호';"
sudo mysql -uroot -p암호 -e "GRANT ALL ON DB이름.* TO '유저'@'localhost';"
sudo mysql -uroot -p암호 -e "FLUSH PRIVILEGES;"



