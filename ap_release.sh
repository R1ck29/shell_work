#!/bin/bash


# 設定ファイル
CURRENT_DIR=`dirname $0`
#. ${CURRENT_DIR}/conf/env.ini

#
today=$(date "+%Y%m%d")
tag=01
pf=core
work_path="/c/wrk/${today}${tag}_${pf}"
user_id="nttd-suzukirke"
#TODO:input password
user_pw="riku1192"
repo="fr-oms-core-batch"
git_url="https://${user_id}@github.com/fastretailing/${repo}.git"


#:${user_pw}
#create work directory
mkdir ${work_path}

if [ $? -ne 1 ]; then
	echo "work directry is created."
else
	echo "Failed to create work directry."
	new_tag=$(expr ${tag} + 1)
	mkdir /c/wrk/${today}0${new_tag}_${pf}
	echo "Made /c/wrk/${today}${new_tag}_${pf}"
	exit 1
fi
#move to work directry
cd ${work_path}

if [ $? -ne 1 ]; then
	echo "Moved to work directry."
else
	echo "Failed to change directry."
	exit 1
fi

pwd


#clone 
echo "Cloning from Git..."
git clone ${git_url}


<< comment
if [ $? -ne 1 ]; then
	echo "Git clone has finished."
else
	echo "Failed to clone ."
	exit 1
fi

#check if repository exists.
cd ${repo}

if [ $? -ne 1 ]; then
	echo "Moved to work directry."
else
	echo "Failed to change directry."
	exit 1
fi

pwd

git branch -a


git checkout develop-sandbox5


git merge --no-commit origin/master-sandbox

if confict
git status
-
git diff
git add .
git commit -m "【コメント】"
git status
fi

#check file
pom
application-dev.yml

if [[ modified ]]; then
 	#statements
	git status
	git diff
	git add .
	git status
	git commit -m "【コメント】"
	git status
 
elif [[ no modification ]]; then
	#statements
	git status
	git commit
	git status
	git log

fi

DML
DDL

git push origin develop-sandbox5

comment
