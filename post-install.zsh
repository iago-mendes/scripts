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

# coding tools
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

# coding apps
sudo apt install -y vim
curl -fsSL -o ~/Downloads/vscode.deb https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
sudo dpkg -i ~/Downloads/vscode.deb
rm ~/Downloads/vscode.deb