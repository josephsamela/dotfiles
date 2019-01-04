# Joe Samela's setup script for debian, ubuntu, elementary, raspbian, etc. 

# Update packages
apt update
apt upgrade

# Install most commonly used programs
apt install tmux htop neovim ranger tree sxic moc screenfetch git ffmpeg mutt pass

# Set important alias
echo "alias p='cd /media/removable/STORAGE/Projects'" >> ~/.bashrc
echo "alias vim='nvim'" >> ~/.bashrc
