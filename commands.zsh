source '/home/iago/Coding/scripts/credentials.zsh'

function commands() # open this file
{
	code ~/Desktop/Coding/scripts/commands.zsh
}

function git-ac() # git add and commit
{
	git add .
	git commit -m "$1"
}

source '/home/iago/Coding/scripts/start.zsh'
source '/home/iago/Coding/scripts/update.zsh'
source '/home/iago/Coding/scripts/vpn.zsh'