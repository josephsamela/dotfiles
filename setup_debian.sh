# Joe Samela's setup script for debian, ubuntu, elementary, raspbian, etc. 

# Reminder to run this as root!
if [ ! "`whoami`" = "root" ]
then
    echo "\nPlease run script as root."
    exit 1
fi

# Update packages
apt update
apt upgrade

# Install most commonly used programs
apt install tmux htop neovim ranger tree moc neofetch git ffmpeg python3 python3-pip

# Set important alias in ~/.bashrc
echo "alias p='cd ~/projects'" >> ~/.bashrc
echo "alias vim='nvim'" >> ~/.bashrc
echo "alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'" >> ~/.bashrc
echo "alias python='python3'" >> ~/.bashrc
echo "alias pip='python3 -m pip'" >> ~/.bashrc
echo "alias p='cd ~/projects'" >> ~/.bashrc
echo "alias weather='curl wttr.in'" >> ~/.bashrc
echo "alias vrc='vim ~/.config/nvim/init.vim'" >> ~/.bashrc
echo "alias brc='vim ~/.bashrc'" >> ~/.bashrc
echo "alias trc='vim ~/.tmux.conf'" >> ~/.bashrc
echo "alias ll='ls -l'" >> ~/.bashrc
echo "alias la='ls -a'" >> ~/.bashrc

# Set tmux preferences in ~/.tmux.conf
echo "prefix : set -g mouse off" >> ~/.tmux.conf
echo "set -sg escape-time 0" >> ~/.tmux.conf

# neovim preferences to ~/.config
cp -R nvim/ ~/.config

# Install python packages
pip install castero

# Create project folder
mkdir ~/projects

# Install note
git clone https://github.com/JosephSamela/note ~/projects/note
bash ~/projects/note/install.sh
