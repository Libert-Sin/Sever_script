#!/bin/bash
echo -e "#### 이 프로그램의 저작권은 ⓒLibert Sin 에 있습니다. ####\n 자유로운 배포·수정은 허용하지만 원저작자와 출처를 표시해야 합니다.\n http://photoguraphy.com/\n#############\n\n\n"


ROOT_UID=0
E_NOTROOT=67
 
if [ "$UID" -ne "$ROOT_UID" ]
then
echo "Script have to execute on ROOT mode"
exit $E_NOTROOT
fi


mysql -u유저 -pDB암호 -e "drop database DB이름;"

mysql -u유저 -pDB암호 -e "create database DB이름;"

sudo mysql -e "GRANT ALL PRIVILEGES ON DB이름.* TO DB계정명@localhost;"

sudo mysql -e "FLUSH PRIVILEGES;"

mysql -u유저 -p암호 DB이름 < ~/backup/DB이름.sql


sudo rm -rfv /var/www/*
sudo tar zxcv ~/backup/*html.tar.gz /var/www
sudo chown -R www-data:www-data /var/www
sudo chown -R apache:apache /var/www
sudo chmod 755 -R /var/www/*
