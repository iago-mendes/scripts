function start()
{
	if [ "$1" = "routine" ]; then
		xdg-open "https://calendar.google.com/calendar/r?tab=rc"
		xdg-open "https://mail.google.com/mail/u/0/?ogbl#inbox"
		xdg-open "https://mail.google.com/mail/u/1/#inbox"
		exit
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
		echo "$1 is not accepted in start command."
	fi
}