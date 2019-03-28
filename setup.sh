# Joe Samela's setup script for debian, ubuntu, elementary, raspbian, etc. 

# Reminder to run this as root!
if [ ! "`whoami`" = "root" ]
then
    echo "Please run script as root."
    exit 1
fi

# Set bashrc config
echo bashrc >> ~/.bashrc

# Set mocp config
cp -R moc ~/.moc

# Set tmux preferences in ~/.tmux.conf
echo tmux.conf >> ~/.tmux.conf

# neovim preferences to ~/.config
cp -R nvim/ ~/.config

# Create project folder
mkdir ~/projects

# Move utils to home folder
cp -R utils ~/.utils
