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

sudo mysql -e "GRANT ALL PRIVILEGES ON DB이름.* TO 유저@localhost;"

sudo mysql -e "FLUSH PRIVILEGES;"

mysql -u유저 -p암호 DB이름 < /백업경로/DB이름.sql


sudo rm -rfv /웹페이지소스경로/*
sudo tar -xvzf /백업경로/*html.tar.gz /웹페이지소스경로
sudo chown -R www-data:www-data /웹페이지소스경로
sudo chown -R apache:apache /웹페이지소스경로
sudo chmod 755 -R /웹페이지소스경로/*
