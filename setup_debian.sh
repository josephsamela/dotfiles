# Joe Samela's setup script for debian, ubuntu, elementary, raspbian, etc. 

# Reminder to run this as root!
if [ ! "`whoami`" = "root" ]
then
    echo "Please run script as root."
    exit 1
fi

# Update packages
apt update
apt upgrade

# Install most commonly used programs
apt install tmux htop neovim ranger tree moc neofetch git ffmpeg python3 python3-pip unzip

# Set bashrc config
cp bashrc ~/.bashrc

# Set mocp config
cp -R moc ~/.moc

# Set tmux preferences in ~/.tmux.conf
cp tmux.conf ~/.tmux.conf

# neovim preferences to ~/.config
cp -R nvim/ ~/.config

# Install python packages
pip install castero

# Create project folder
mkdir ~/projects

