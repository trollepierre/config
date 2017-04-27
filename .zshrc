# Path to your oh-my-zsh installation.
export ZSH=/Users/trolle/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"


# ssh-keygen is bad
ff(){
  ssh-keygen -R $1
}

sssh(){
  ff $1
  ssh $1
}

# Utiliser oh-my-git https://github.com/arialdomartini/oh-my-git
source "$HOME/.antigen/antigen.zsh"
antigen-use oh-my-zsh
antigen-bundle arialdomartini/oh-my-git
antigen theme arialdomartini/oh-my-git-themes oppa-lana-style
antigen-apply

# Autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
plugins=(git)

# User configuration

export PATH="/Users/trolle/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export MAVEN_OPTS="-Xmx2048m -Dmaven.wagon.http.ssl.insecure=true"
alias mci='mvn clean install'
alias mcit='mvn clean install -DskipTests'
alias liq='mvn clean initialize liquibase:update -pl webapp,api,oic-server'
alias killh2='sudo rm -rf ~/.h2_db_spplus'
alias spproxy="export http_proxy=http://192.168.50.13:8080/ && export https_proxy=https://192.168.50.13:8080/ && export no_proxy="localhost,127.0.0.1" && export HTTP_PROXY=http://192.168.50.13:8080/ && export HTTPS_PROXY=https://192.168.50.13:8080/ && export NO_PROXY="localhost,127.0.0.1"" && cp ~/.m2/settings_proxy.xml ~/.m2/settings.xml

alias noproxy="export http_proxy="" && export https_proxy="" && export no_proxy="localhost,127.0.0.1" && export HTTP_PROXY="" && export HTTPS_PROXY="" && export NO_PROXY="localhost,127.0.0.1"" && cp ~/.m2/settings_noproxy.xml ~/.m2/settings.xml

#alias killds = 'sudo find / -name ".DS_Store" -depth -exec rm {} \;'

# Git
# ---
alias ga="git add ."
alias gb="git branch"
alias gc="git commit -v"
alias gcm="git commit -m"
alias gd="git diff"
alias ge="git clean"
alias gf="git pull --rebase"
alias gg="git stash pop"
alias gh="git help"
alias gi="git init"
alias gj="git checkout dev"
alias gk="git clone"
alias gl="git log --graph --decorate --pretty=oneline --abbrev-commit"
alias gm="git merge"
alias gn="git rebase --continue"
alias go="git checkout"
alias gp="git push"
alias gq="git rebase -i"
alias gr="git revert"
alias gs="git status"
alias gst="git stash"
alias gt="git stash"
alias gu="git remote add upstream"
alias gv="git --version"
alias gw="git push origin `git rev-parse --abbrev-ref HEAD`"
alias gx="git reset HEAD --hard"
alias gy="git commit --amend"
alias gz="git checkout master"


# NPM
# ---
alias ni="npm install"
alias na="npm install --save"
alias nd="npm install --save-dev"
alias ng="npm install -g"
alias nh="npm help"
alias np="npm publish"
alias nt="npm test"
alias ns="npm start"
alias nr="npm run"
alias nu="npm uninstall"


export PATH=${PATH}:~/bin


# GRADLE
alias grb="./gradlew build"
alias gdbr="./gradlew build"
alias grr="./gradlew bootRun"
alias gdbu="./gradlew bootRun" 

