#!/bin/bash
echo -e "#### 이 프로그램의 저작권은 ⓒLibert Sin 에 있습니다. ####\n 자유로운 배포·수정은 허용하지만 원저작자와 출처를 표시해야 합니다.\n http://photoguraphy.com/\n#############\n\n\n"


ROOT_UID=0
E_NOTROOT=67
 
if [ "$UID" -ne "$ROOT_UID" ]
then
echo "Script have to execute on ROOT mode"
exit $E_NOTROOT
fi



DATE=`date +"%Y%m%d%H%M%S"`

mkdir ~/backup
mkdir ~/backup/bck${DATE}

tar zcvf ~/backup/bck${DATE}/${DATE}_html.tar.gz /var/www
sudo mysqldump -u유저 -p암호 DB이름 > ~/backup/bck${DATE}/${DATE}_DB이름.sql 

sudo chmod 755 -R ~/backup