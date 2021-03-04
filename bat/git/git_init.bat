::turn off echo and clear screen
@echo off
cls

::init directory
echo git init
git init

::add remote origin master
echo please input origin master url
set /p origin_url=origin_url:

echo do you want to add remote origin %origin_url% ? (Y/N)
set /p var=
if "%var%"=="Y" (
	echo remote add origin %origin_url%
    git remote add origin %origin_url%
	::add files
	echo git add
	git add .
	::commit files
	echo git commit
	git commit -m "initial commit"
	echo push -u origin master
	git push -u origin master
) else (
    echo stop
)
pause
echo end...