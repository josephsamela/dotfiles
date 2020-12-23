
# Reminder to run this as root!
if [ ! "`whoami`" = "root" ]
then
    echo "Please run script as root."
    exit 1
fi

sudo apt install git moc unzip htop tmux tree neofetch ranger ffmpeg neovim nmap wget curl python3 python3-pip golang vlc software-properties-common 
