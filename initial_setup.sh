# Install base apps
sudo apt install git curl tldr

# Update tldr database
tldr -u

# Install vscode
curl -L 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64' -o vscode.deb
sudo dpkg -i vscode.deb
