# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source $HOME/.exports
# Set TERM to xterm-256color if it is st-256color
if [[ $TERM == "st-256color" ]]; then
  export TERM="xterm-256color"
fi

###############
### Exports ###
###############
export PATH=$HOME/.local/bin:$PATH
# Java Classpath and version
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export PATH=$PATH:$JAVA_HOME/bin
# Rust to Path
export PATH="$PATH:$HOME/.cargo/bin"
# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"
export EDITOR="nvim"
export DIFFPROG="nvim -d $1"
export UPDATE_ZSH_DAYS=2
export ZSH_CUSTOM_AUTOUPDATE_QUIET=true
export ANDROID_SDK_ROOT=$HOME/Tools/android
# export ANDROID_SDK_ROOT=$HOME/Android/Sdk/android-sdk
# export ANDROID_HOME='/opt/android-sdk'
# export CHROME_EXECUTABLE='/usr/bin/chromium'
export CHROME_EXECUTABLE="${HOME}/.local/bin/no_cors_chrome"
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools/
export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin/
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export ANDROID_HOME=$ANDROID_SDK_ROOT
# dotnet tools
export PATH=$PATH:$HOME/.dotnet/tools/
# yarn globals
export PATH="$(yarn global bin):$PATH"
# dart globals
export PATH="$PATH":"$HOME/.pub-cache/bin"
# managed flutter
export PATH=$HOME/fvm/default/bin:$PATH
# Oracle client
export PATH=/opt/oracle/instantclient_23_26/:$PATH
# golang
export GOPATH=$HOME/Tools/go
export PATH=$PATH:$GOPATH/bin
# php
export PATH=$PATH:$HOME/.config/composer/vendor/bin
# Jetbrains Toolbox
export PATH=$PATH:$HOME/.local/share/JetBrains/Toolbox/bin
# Zoxide command
export ZOXIDE_CMD_OVERRIDE='cd'
# QT settings
export QT_QPA_PLATFORMTHEME="qt5ct"
# GTK settings
export GTK_THEME="Arc:dark"

#################


# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	colored-man-pages
    autoupdate
	zsh-autosuggestions
	zsh-syntax-highlighting
	zsh-vi-mode
	colorize
    docker
    docker-compose
    rails
    ruby
    rake
    zoxide
    poetry
)


# Vim mode settings
ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_BEAM
ZVM_NORMAL_MODE_CURSOR=$ZVM_CURSOR_BLOCK
ZVM_OPPEND_MODE_CURSOR=$ZVM_CURSOR_UNDERLINE

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias config='/usr/bin/git --git-dir=/home/benjamino/.myconfig/ --work-tree=/home/benjamino'

###############
### Aliases ###
###############
# alias for neovim
alias vim='nvim'
alias v='vim'
alias vi='vim'
alias oldvim='\vim'
alias vimdiff='nvim -d'
alias zerovim='nvim -u NONE'

# alias for better ls
alias lsl='lsd -a'
alias ls='lsd'
alias lsla='lsd -la'

# alias for kanban application
alias tkb='tui-kanban'

#alias for faster *rc editing
alias vimrc='vim ~/.config/nvim/init.lua'
alias zshrc='vim ~/.zshrc'
alias ghostrc='vim ~/.config/ghostty/config'
alias bashrc='vim ~/.bashrc'
alias picomrc="vim ~/.config/picom/picom.conf"
alias sshc="vim ~/.ssh/config"

# git aliases
alias gac='git add . && git commit -a'
alias gst='git status'
alias gpu='git push'
alias gall='git add .'
alias gpl='git pull'
alias gck='git checkout'
alias lg='lazygit'

# alias to quickly get class of window
alias wmclass='xprop _NET_WM_PID WM_CLASS'

# alias for spotify-tui
alias spotify='sh ~/.local/bin/launchspt'

#alias for foldersize
alias size='sudo du -shc '

# ranger
alias ra='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# docker
alias dls='docker ps'
alias dlsa='docker ps -a'
alias dso='docker stop'
alias dsa='docker start'
alias doc='docker-compose'
alias dcu='docker compose up'
alias dcud='docker compose up -d'
alias dcd='docker compose down'

# flutter
alias fpg='flutter pub get'
alias fpa='flutter pub add'
alias femu='MESA_LOADER_DRIVER_OVERRIDE=i965 LIBGL_ALWAYS_SOFTWARE=0 ANDROID_EMULATOR_USE_VULKAN=true emulator -avd Resizable -gpu host'
# managed flutter
alias fvr='flutter run'
alias dbrw='dart run build_runner watch -d'

# zip everything that is checked into git used like this: gitzip [OUTPUT_FILE]
alias gitzip="git archive HEAD -o "

# when the keyboard is german but should be english
alias zaz='uskeys'

alias sshcp='xclip -sel clip < ~/.ssh/id_ed25519.pub'

# project based aliases
alias mdt='cd ~/Projects/Mundet'
alias mdtrm='cd ~/Projects/Mundet/mundet_recipe_maker'
alias mdtct='cd ~/Projects/Mundet/mundet-flutter'
alias mdtsl='cd ~/Projects/Mundet/mundet_shared_lib'
alias mdtnn='cd ~/Projects/Mundet/number_nexus'
alias efgh='cd ~/Projects/EFGH/'
alias agt='cd ~/Projects/EFGH/Agents/'
alias efghas='cd ~/Projects/EFGH/Agents/astrosistant-server/'
alias astc='cd ~/Projects/EFGH/Agents/astrosistant-client/'
alias wiki='cd ~/Projects/EFGH/wiki/'

# keep screen on
alias caff='xset s off -dpms'
alias decaff='xset s on +dpms'

# run velocidrone when there is no internet
alias velo='~/.local/share/PatchKit/Apps/d5f20cca/app/velocidrone.x86_64'

# open the master_thesis folder
alias ma='cd ~/Uni/MA/master_thesis'
alias mai='cd ~/Uni/MA/implementations'
alias mar='cd ~/Uni/MA/implementations/rest/'
alias mab='cd ~/Uni/MA/backend_prototype/cooking_together_api/'

alias yam='command ya'

# open the last editet chapter of the master_thesis
mat() {
    cd ~/Uni/MA/master_thesis/text/
    resize &
    nvim *(om[1]) -c "VimtexCompile"
}

resize() {
    sleep 1
    xdotool key Super+l
    xdotool key Super+l
}

# yay/ paru refresh dwmblocks
yay() {
	#    echo "Using old yay again"
	# /usr/bin/yay "$@"
    /usr/bin/paru "$@"
	pkill -RTMIN+1 dwmblocks
    uskeys
}
#function to safely remove my hdd
removeHDD() {
    udisksctl unmount -b /dev/sdb1
    udisksctl unmount -b /dev/sdb2
    udisksctl power-off -b /dev/sdb
}

#function to add, commit and push changes to dotfiles from anywhere
dotc() {
    cd ~/.dotfiles
    gall
    gac
    gp
    cd -
}

# fkill - kill processes - list only the ones you can kill. Modified the earlier script.
fkill() {
    local pid
    if [ "$UID" != "0" ]; then
        pid=$(ps -f -u $UID | sed 1d | fzf -m | awk '{print $2}')
    else
        pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')
    fi

    if [ "x$pid" != "x" ]
    then
        echo $pid | xargs kill -${1:-9}
    fi
}

notes() {
    cd ~/notes/
    v index.norg
    cd -
}

dennis_git() {
    git config user.name "Dennis Gottfried"
    git config user.email "dennis.gottfried@student.htw-berlin.de"
}

paul_git() {
    git config user.name "Paul Höppner"
    git config user.email "paul.hoeppner@student.htw-berlin.de"
}

function ya() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# ruby to PATH
# export GEM_HOME="$HOME/.asdf/installs/ruby/3.4.1/lib/ruby/gems/3.4.0"
# export GEM_PATH="$HOME/.asdf/installs/ruby/3.4.1/lib/ruby/gems/3.4.0"
# export USER_GEM_HOME="$HOME/.asdf/installs/ruby/3.4.1/lib/ruby/gems/3.4.0"
# . /opt/asdf-vm/asdf.sh
# export GEM_HOME="$(gem env user_gemhome)"
# export PATH="$PATH:$GEM_HOME/bin"
source /usr/share/chruby/chruby.sh
chruby 3.4.5

################
#language stuff#
################
# Python venv wrapper
# usage
# $ mkvenv myvirtualenv # creates venv under ~/.virtualenvs/
# $ venv myvirtualenv   # activates venv
# $ deactivate          # deactivates venv
# $ rmvenv myvirtualenv # removes venv

export VENV_HOME="$HOME/.virtualenvs"
[[ -d $VENV_HOME ]] || mkdir $VENV_HOME

lsvenv() {
  ls -1 $VENV_HOME
}

venv() {
  if [ $# -eq 0 ]
    then
      echo "Please provide venv name"
    else
      source "$VENV_HOME/$1/bin/activate"
  fi
}

mkvenv() {
  if [ $# -eq 0 ]
    then
      echo "Please provide venv name"
    else
      python3 -m venv $VENV_HOME/$1
  fi
}

rmvenv() {
  if [ $# -eq 0 ]
    then
      echo "Please provide venv name"
    else
      rm -r $VENV_HOME/$1
  fi
}

mkikernel() {
    if [ $# -eq 0 ]
      then
        echo "Please provide venv name"
      else
        python3 -m ipykernel install --user --name $1
    fi
}

initvenv() {
    if [ $# -eq 0 ]
      then
        echo "Please provide venv name"
      else
        mkvenv $1
        venv $1
        mkikernel $1
    fi
}

daily_obsidian_note_qs() {
    cd ~/quatro/notes/daily/
    nvim +"Obsidian today" welcome.md 
}

alias qsdn='daily_obsidian_note_qs'

# enable history support in erlang
# export ERL_AFLAGS="-kernel shell_history enabled"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# eval "$(rbenv init - zsh)"

source /home/paul/.config/broot/launcher/bash/br
source /usr/share/nvm/init-nvm.sh


## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/paul/.dart-cli-completion/zsh-config.zsh ]] && . /home/paul/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# bun completions
[ -s "/home/paul/.bun/_bun" ] && source "/home/paul/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
