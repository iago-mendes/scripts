if [ -d ~/.yarn/bin ]; then
	PATH=$PATH:~/.yarn/bin
fi
if [ -d ~/Apps/bin ]; then
  PATH=$PATH:~/Apps/bin
fi

# Apple's Transporter
if [ -d /usr/local/itms/bin/ ]; then
  PATH=$PATH:/usr/local/itms/bin/
fi
