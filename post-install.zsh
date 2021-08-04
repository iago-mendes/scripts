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

# coding tools => nodejs, yarn, expo, vercel, docker
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install --global yarn
yarn global add expo-cli
yarn global add vercel
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# coding apps => vim, texmaker, vscode, insonmia
sudo apt install -y vim texmaker
curl -fsSL -o ~/Downloads/vscode.deb https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
sudo dpkg -i ~/Downloads/vscode.deb
rm ~/Downloads/vscode.deb
curl -L https://updates.insomnia.rest/downloads/ubuntu/latest?&app=com.insomnia.app&source=website > ~/Downloads/insomnia.deb
sudo dpkg -i ~/Downloads/insomnia.deb
rm ~/Downloads/insomnia.deb

# useful apps => notion, opera
curl -L https://raw.githubusercontent.com/puneetsl/lotion/master/setup.sh > ~/Downloads/notion.sh
chmod +x ~/Downloads/notion.sh
sudo ~/Downloads/notion.sh native
rm ~/Downloads/notion.sh
curl -L https://download.opera.com/download/get/?partner=www&opsys=Linux > ~/Downloads/opera.deb
sudo dpkg -i ~/Downloads/opera.deb
rm ~/Downloads/opera.deb
curl -L https://raw.githubusercontent.com/iago-mendes/setup-widevine-linux/main/download/libffmpeg.so > ~/Downloads/libffmpeg.so
sudo cp libffmpeg.so /usr/lib/x86_64-linux-gnu/opera
rm ~/Downloads/libffmpeg.so

# audiovisual apps => audacity, gimp, inkscape, obs, kdenlive
sudo add-apt-repository ppa:ubuntuhandbook1/audacity
sudo add-apt-repository ppa:inkscape.dev/stable-1.1
sudo apt install -y ffmpeg
sudo add-apt-repository ppa:obsproject/obs-studio
sudo add-apt-repository ppa:kdenlive/kdenlive-stable
sudo apt-get update
sudo apt install -y audacity gimp inkscape obs-studio kdenlive

# stem apps => stellarium, geogebra
if [ ! -d "~/Apps" ]; then
	mkdir ~/Apps
fi
curl -L https://github.com/Stellarium/stellarium/releases/download/v0.21.1/stellarium-0.21.1-x86_64.AppImage > ~/Apps/Stellarium.AppImage