# Update repositories
sudo apt update

# Install base apps
sudo apt install -y git curl tldr zsh fonts-powerline

# Update tldr database
tldr -u

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Change theme
sed -i 's/ZSH_THEME=".*"/ZSH_THEME="agnoster"/g' ~/.zshrc
echo 'DEFAULT_USER=$USER' >> ~/.zshrc
omz reload

# Install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1
echo '. "$HOME/.asdf/asdf.sh"' >> ~/.zshrc
omz reload

# Install vscode
curl -L 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64' -o vscode.deb
sudo dpkg -i vscode.deb

# Install solaar (logitech device manager)
sudo add-apt-repository ppa:solaar-unifying/stable
sudo apt update
sudo apt install -y solaar
