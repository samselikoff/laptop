export GOTRACEBACK=all
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins+=(rails)
plugins+=(git)
plugins+=(ruby)
plugins+=(bundler)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:"
# export MANPATH="/usr/local/man:$MANPATH"

# rbenv init
eval "$(rbenv init -)"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Aliases
alias zshconfig="vim ~/.zshrc"
alias ll="ls -l"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias tmuxconfig="vim ~/.tmux.conf"
alias vimconfig="vim ~/.vimrc.after"
alias gitconfig="vim ~/.gitconfig"

alias proj="cd ~/Projects"
alias em="cd ~/Projects/Ember\ Map\ assets/"

alias vim="stty stop '' -ixoff ; vim"
alias tmux new="tmux new-session"
alias s="python -m SimpleHTTPServer"
alias teded="foreman start -p 9000 -f Procfile.development"
alias start_pg='rm /usr/local/var/postgres/postmaster.pid && lunchy start postgres'
alias sql="rm -f /usr/local/var/mysql/Sams-Retina-Macbook.local.err && touch /usr/local/var/mysql/Sams-Retina-Macbook.local.pid && mysql.server start"
alias nom="rm -rf node_modules && npm cache clean && npm install"
alias bom="rm -rf bower_components && bower cache clean && bower install"
alias nombom="rm -rf node_modules && npm cache clean && npm install && rm -rf bower_components && bower cache clean && bower install"
alias tmuxa="tmux attach -t TED"
alias npm-exec='PATH=$(npm bin):$PATH'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias notes='subl ~/Desktop/notes.md'
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

# `Frozing' tty, so after any command terminal settings will be restored
ttyctl -f

set -o vi
EDITOR='vim'
PATH="/usr/local/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
PATH="$HOME/bin:${PATH}"
export PATH=/usr/local/git/bin:$PATH

# NVM
export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Variables
export S3_BUCKET_NAME=turbobear
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
export FASTBOOT_DISABLED=true

# Secret variables

bindkey "^R" history-incremental-search-backward

eval "$(direnv hook zsh)"

export PATH="$HOME/.yarn/bin:$PATH"
