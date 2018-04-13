# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# Path to rcfiles repo
RC_DIR="$HOME/rcfiles"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dstufft"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="false"
unset COMPLETION_WAITING_DOTS

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
os=$(uname)
if [ $os = "Linux" ]; then
    plugins=(gitfast git-flow docker node npm archlinux systemd screen zsh-syntax-highlighting)
    echo -e "\e[8;33;44m Enable zsh plugin  \e[1;37;45m Linux \e[0m"
elif [ $os = "Darwin" ]; then
    plugins=(git git-open git-prompt colored-man colorize github jira vagrant virtualenv pip python brew osx zsh-syntax-highlighting)
    echo -e "\e[8;33;44m Enable zsh plugin  \e[1;37;45m Mac OS X \e[0m"
else
    plugins=(zsh-syntax-highlighting zsh-autosuggestions)
    echo -e "\e[1;37;41m Disable zsh plugin \e[8;33;44m FreeBSD \e[0m"
fi

source $ZSH/oh-my-zsh.sh
if [[ -f $RC_DIR/zsh/zsh.env ]];then
    source $RC_DIR/zsh/zsh.env
fi
if [[ -f $RC_DIR/zsh/zsh.aliases ]];then
    source $RC_DIR/zsh/zsh.aliases
fi

# Enable autosuggestions automatically.
zle-line-init() {
}

autoload history-search-end
zle -N zle-line-init
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
AUTOSUGGESTION_HIGHLIGHT_COLOR="fg=117"

# disable EOF(^D) to exit shell
setopt ignoreeof

# 去除打目錄名稱會cd進去功能
unsetopt autocd
unsetopt cdablevars

bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[7~" beginning-of-line # Home rxvt
bindkey "\e[H"  beginning-of-line
bindkey "\e[2~" overwrite-mode    # Ins
bindkey "\e[3~" delete-char       # Delete
bindkey "\e[4~" end-of-line       # End
bindkey "\e[8~" end-of-line       # End rxvt
bindkey "\e[F"  end-of-line

export LESS_TERMCAP_so=$'\E[01;03;31m'
export LESS_TERMCAP_se=$'\E[m'

# custom you zsh here
source $RC_DIR/zsh/zsh.custom
