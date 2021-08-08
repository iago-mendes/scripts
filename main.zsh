source "$HOME/Coding/scripts/.env.zsh"
source "$HOME/Coding/scripts/paths.zsh"

function git-ac() # git add and commit
{
	git add .
	git commit -m "$1"
}

source "$HOME/Coding/scripts/functions/start.zsh"
source "$HOME/Coding/scripts/functions/update.zsh"
source "$HOME/Coding/scripts/functions/connect.zsh"