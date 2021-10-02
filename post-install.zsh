# update all packages
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

# setup terminal
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
curl -fsSL -o ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/myTheme.zsh-theme https://raw.githubusercontent.com/iago-mendes/scripts/master/terminal/myTheme.zsh-theme
curl -fsSL -o ~/.zshrc https://raw.githubusercontent.com/iago-mendes/scripts/master/terminal/.zshrc
source ~/.zshrc

# nodejs
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# yarn
sudo npm install --global yarn

# expo
yarn global add expo-cli

# vercel
yarn global add vercel

# docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# vim
sudo apt install -y vim

# Texmaker
sudo apt install -y texmaker

# Notion / Lotion
curl -L https://raw.githubusercontent.com/puneetsl/lotion/master/setup.sh > ~/Downloads/notion.sh
chmod +x ~/Downloads/notion.sh
sudo ~/Downloads/notion.sh native
rm ~/Downloads/notion.sh

# flathub
flathubApps=(
	'flatpak install flathub com.visualstudio.code' # VS code
	'rest.insomnia.Insomnia' # Insomnia
	'com.github.xournalpp.xournalpp' # Xournal++
	'org.chromium.Chromium' # Chromium
	'com.github.micahflee.torbrowser-launcher' # Tor Browser
	'org.audacityteam.Audacity' # Audacity
	'org.gimp.GIMP' # GIMP
	'org.inkscape.Inkscape' # Inkscape
	'com.obsproject.Studio' # OBS Studio
	'org.kde.kdenlive' # Kdenlive
	'flathub org.stellarium.Stellarium' # Stellarium
	'org.geogebra.GeoGebra' # GeoGebra
	'org.gnome.Boxes' # Boxes
	'org.qbittorrent.qBittorrent' # qBittorrent
	'org.libreoffice.LibreOffice' # LibreOffice
	'us.zoom.Zoom' # Zoom
	'org.telegram.desktop' # Telegram
	'com.discordapp.Discord' # Discord
)
for app in "$flathubApps[@]"
do
	flatpak install -y flathub "$app"
done
