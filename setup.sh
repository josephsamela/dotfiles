# Joe Samela's setup script for debian, ubuntu, elementary, raspbian, etc. 

# Reminder to NOT run as root!
if [ "`whoami`" = "root" ]
then
    echo "Please do not run this script as root."
    exit 1
fi

# Set bashrc config
cat bashrc >> ~/.bashrc

# Set mocp config
cp -R moc ~/.moc

# Set tmux preferences in ~/.tmux.conf
cat tmux.conf >> ~/.tmux.conf

# neovim preferences to ~/.config
cp -R nvim/ ~/.config

# Create project folder
mkdir ~/projects

# Move utils to home folder
cp -R utils ~/.utils
