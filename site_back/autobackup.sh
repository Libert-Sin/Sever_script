#!/bin/bash
echo -e "#### 이 프로그램의 저작권은 ⓒLibert Sin 에 있습니다. ####\n 자유로운 배포·수정은 허용하지만 원저작자와 출처를 표시해야 합니다.\n http://photoguraphy.com/\n#############\n\n\n"


ROOT_UID=0
E_NOTROOT=67
 
if [ "$UID" -ne "$ROOT_UID" ]
then
echo "Script have to execute on ROOT mode"
exit $E_NOTROOT
fi




sudo sh ~/sh/clean.sh
sudo sh ~/sh/backup.sh




mkdir /백업경로/backupM
megals -u 메가가입메일 -p 암호 /Root/backupM | grep _ | xargs -d'\n' megaget -u 메가가입메일 -p 암호 --path /백업경로/backupM

megals -u 메가가입메일 -p 암호 /Root/backupM | grep _ | xargs -d'\n' megarm -u 메가가입메일 -p 암호 

megaput -u 메가가입메일 -p 암호 --path/Root/backupM  /백업경로/*




sudo yum update -y
sudo yum upgrade -y
