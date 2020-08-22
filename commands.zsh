# QUICK COMMANDS

function commands() # open this file
{
	code ~/Desktop/Coding/scripts/commands.zsh
}

function git-ac() # git add and commit
{
	git add .
	git commit -m "$1"
}

source '/home/iago/Desktop/Coding/scripts/start.zsh'
source '/home/iago/Desktop/Coding/scripts/update.zsh'