#!/bin/bash

# ./loop-git_status [폴더경로]

while :
do

  # git status 출력
  cd $1
  git status
  echo "********************************************************************"

  # 실행중 표시
  time=0
  while [ $time -le 10 ]
  do

		echo -n "/"
		echo -ne "\r"
		sleep 0.1
		echo -n "-"
		echo -ne "\r"
		sleep 0.1
		echo -n "\\"
		echo -ne "\r"
		sleep 0.1
		echo -n "|"
		echo -ne "\r"
		sleep 0.1	

		((time++))

	done

done
