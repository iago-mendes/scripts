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