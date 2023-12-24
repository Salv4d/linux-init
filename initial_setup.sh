# Install base apps
sudo apt install -y git curl tldr zsh

# Update tldr database
tldr -u

# Install vscode
curl -L 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64' -o vscode.deb
sudo dpkg -i vscode.deb

