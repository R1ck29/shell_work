#!/bin/bash


# Load setting file
CURRENT_DIR=`dirname $0`
. ${CURRENT_DIR}/setting.ini

# Create work directory
mkdir ${work_path}

if [ $? -ne 0 ]; then
	echo "Failed to create work directry."
	exit $?
else
	echo "work directry is created."

fi

# Change work directry
cd ${work_path}

if [ $? -ne 0 ]; then
	echo "Failed to change directry."
	exit $?
else
	echo "Moved to work directry."
fi

pwd


# Clone 
echo "Cloning from Git...${git_url}"
git clone ${git_url}


if [ $? -ne 0 ]; then
	echo "Failed to clone ."
	exit $?

fi


# Change work directry
cd ${repo}

if [ $? -ne 0 ]; then
	echo "Failed to change directry."
	exit $?
else
	echo "Moved to work directry."
fi

pwd

# Show branch
git branch -a
if [ $? -ne 0 ]; then
	echo "Failed to show branch."
	exit $?
fi

# Check out
git checkout ${dev}
if [ $? -ne 0 ]; then
	echo "Failed to checkout."
	exit $?
else
	echo "checked out."
fi
<< comment

git merge --no-commit origin/master-sandbox

if confict
	git status
	-
	git diff
	git add .
	git commit -m "${comment}"
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
