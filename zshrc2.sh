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

bindkey "^W" backward-delete-word

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[7~" beginning-of-line # Home rxvt
bindkey "\e[H"  beginning-of-line
bindkey "\e[2~" overwrite-mode    # Ins
bindkey "\e[3~" delete-char       # Delete
bindkey "\e[4~" end-of-line       # End
bindkey "\e[8~" end-of-line       # End rxvt
bindkey "\e[F"  end-of-line
