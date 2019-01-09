# Joe Samela's setup script for debian, ubuntu, elementary, raspbian, etc. 

# Update packages
apt update
apt upgrade

# Install most commonly used programs
apt install tmux htop neovim ranger tree sxic moc screenfetch git ffmpeg mutt pass python3

# Set important alias
echo "alias p='cd /media/removable/STORAGE/Projects'" >> ~/.bashrc
echo "alias vim='nvim'" >> ~/.bashrc
echo "alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'" >> ~/.bashrc
echo "alias python='python3'" >> ~/.bashrc
echo "alias pip='python3 -m pip'" >> ~/.bashrc

# Install python packages
pip install castero
