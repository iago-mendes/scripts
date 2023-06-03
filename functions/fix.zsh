function fix() {
	if [ "$1" = "stylus" ]; then
		sudo modprobe -r -v  wacom
		sudo modprobe -v  wacom
		lsmod | grep wacom
		echo "\nDone!"
	elif [ "$1" = "graphics" ]; then
		bash -lic "
			sudo apt purge ~nnvidia -y # Remove all nvidia-relevant packages
			sudo apt clean -y # Remove apt cache
			sudo apt update -m -y # Update package metadata, ignore missing packages
			sudo dpkg --configure -a -y # Configure any packages not yet configured
			sudo apt install -f -y # Fix any broken packages
			sudo apt full-upgrade -y # Upgrade any packages that need it
			sudo apt autoremove -y # Remove any unneeded packages still installed
			sudo apt install system76-driver-nvidia -y # Install the nvidia driver via system76 package
			echo
			echo 'Done!'
			echo 'You need to reboot.'
		"
	else
		echo "'$1' is not accepted in this command."
	fi
}