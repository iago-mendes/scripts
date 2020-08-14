# Quick files / paths

function commands()
{
	code ~/Desktop/Coding/scripts/commands.zsh
}

# Automation

function start()
{
	if [ "$1" = "routine" ]; then
		google-chrome-stable
		# need to create python file to open tabs
	elif [ "$1" = "coding" ]; then
		cd ~/Desktop/Coding
		if [ "$2" = "cinephix" ]; then
			cd cinephix
			if [ "$3" = "web" ]; then
				cd web
				code .
				yarn start
			elif [ "$3" = "server" ]; then
				cd server
				code .
				npm run dev
			elif [ "$3" = "mobile" ]; then
				cd mobile
				code .
				yarn start
			fi
		elif [ "$2" = "scripts" ]; then
			cd scripts
			code .
		fi
	else
		echo "This script does not exist... If you would like to view the scripts available, use 'commands' to open the file in VS code."
	fi
}