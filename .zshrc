#source other zsh configs

if [[ -f $HOME/rcfiles/zsh/zsh.env ]];then
    source $HOME/rcfiles/zsh/zsh.env
fi
if [[ -f $HOME/rcfiles/zsh/zsh.prompt ]];then
    source $HOME/rcfiles/zsh/zsh.prompt
fi
if [[ -f $HOME/rcfiles/zsh/zsh.aliases ]];then
    source $HOME/rcfiles/zsh/zsh.aliases
fi
if [[ -f $HOME/rcfiles/zsh/screen.plugin.zsh ]];then
    source $HOME/rcfiles/zsh/screen.plugin.zsh
fi


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' menu select=2 # if there is more than 2 options,auto select the entries
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle :compinstall filename '/home/kevinptt/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

bindkey '^[[A' up-line-or-search                                                
bindkey '^[[B' down-line-or-search

# bindkey from pi314 github repo
bindkey "\e[H" beginning-of-line
bindkey "\e[1~" beginning-of-line # for screen
bindkey "\eOH" beginning-of-line # for cygwin + mosh

bindkey "\e[F" end-of-line
bindkey "\e[4~" end-of-line # for screen
bindkey "\eOF" end-of-line # for cygwin + mosh
