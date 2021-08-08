source $SCRIPTS_PATH/.env.zsh
source $SCRIPTS_PATH/paths.zsh

function git-ac() # git add and commit
{
	git add .
	git commit -m "$1"
}

source $SCRIPTS_PATH/functions/start.zsh
source $SCRIPTS_PATH/functions/update.zsh
source $SCRIPTS_PATH/functions/connect.zsh