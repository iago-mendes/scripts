source '/home/iago/Coding/scripts/credentials.zsh'
source '/home/iago/Coding/scripts/paths.zsh'

function commands() # open this file
{
	code ~/Desktop/Coding/scripts/commands.zsh
}

function git-ac() # git add and commit
{
	git add .
	git commit -m "$1"
}

source '/home/iago/Coding/scripts/functions/start.zsh'
source '/home/iago/Coding/scripts/functions/update.zsh'
source '/home/iago/Coding/scripts/functions/vpn.zsh'