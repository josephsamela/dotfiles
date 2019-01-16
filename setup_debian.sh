# Joe Samela's setup script for debian, ubuntu, elementary, raspbian, etc. 

# Update packages
apt update
apt upgrade

# Install most commonly used programs
apt install tmux htop neovim ranger tree sxic moc screenfetch git ffmpeg mutt pass python3 python3-pip

# Set important alias in ~/.bashrc
echo "alias p='cd ~/projects'" >> ~/.bashrc
echo "alias vim='nvim'" >> ~/.bashrc
echo "alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'" >> ~/.bashrc
echo "alias python='python3'" >> ~/.bashrc
echo "alias pip='python3 -m pip'" >> ~/.bashrc
echo "alias p='cd ~/projects'" >> ~/.bashrc
echo "alias weather='curl wttr.in'" >> ~/.bashrc

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
