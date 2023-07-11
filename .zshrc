alias p='cd ~/projects'
alias vim='nvim'
alias python='python3.11'
alias pip='python -m pip'
alias vrc='vim ~/.config/nvim/init.vim'
alias brc='vim ~/.bashrc && source ~/.bashrc'
alias zrc='vim ~/.zshrc'
alias trc='vim ~/.tmux.conf'
alias mocp="mocp --theme nes"
alias ll="ls -lh -G"
alias la="ls -la -G"
alias obsh="bash ~/.utils/obsh.sh"

# Environmnet path for java
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"

# Get colors working on MacOS terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Environment variables for node.js
export PATH="/opt/homebrew/opt/node@16/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/node@16/lib"
export CPPFLAGS="-I/opt/homebrew/opt/node@16/include"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

alias vice="x64sc"

parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/\1 /p'
}
COLOR_DEF='%f'
COLOR_USR='%F{243}'
COLOR_DIR='%F{197}'
COLOR_GIT='%F{39}'
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n@%m ${COLOR_DIR}%1~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}% > '
