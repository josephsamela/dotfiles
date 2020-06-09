# On a windows computer (with powershell obviously) put this file at:
# C:\Users\{user}\Documents\WindowsPowerShell\profile.ps1

cd $HOME

Set-Alias -Name vim -Value $HOME\Documents\WindowsPowerShell\nvim-win64\Neovim\bin\nvim.exe
Set-Alias -Name nvim -Value $HOME\Documents\WindowsPowerShell\nvim-win64\Neovim\bin\nvim.exe
Set-Alias grep findstr

function u { set-location "$HOME" }
function p { set-location "$HOME\projects" }
function n { set-location "$HOME\notes" }

function prc { vim $HOME\Documents\WindowsPowerShell\profile.ps1 }
function vrc { vim $HOME\AppData\Local\nvim\init.vim }
