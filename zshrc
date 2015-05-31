# Path to your oh-my-zsh installation.
export ZSH=/Users/drwizzard/.oh-my-zsh

# Set name of the oh-my-zsh theme to load.
ZSH_THEME="mrtazz"

CASE_SENSITIVE="true"

# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)
plugins=(colorize)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"

source $ZSH/oh-my-zsh.sh
source $HOME/.alias
PS1='%{$fg_bold[red]%}%m%{$reset_color%}:%{$fg[cyan]%}%c%{$reset_color%}:%{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}% %# '
RPROMPT=''

export NODE_PATH=$HOME/.node/lib/node_modules
export PATH=$HOME/.node/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.sh/nacnud/bin/:$HOME/.sh/bin

# why work outside tmux
tmux -2

# set vim mode key bindings
bindkey -v
bindkey -M viins 'ii' vi-cmd-mode 			# set ii to escape mode
bindkey "^W" backward-kill-word 
bindkey -a "^W" backward-kill-word 
bindkey "^H" backward-delete-char      # Control-h also deletes the previous char
bindkey "^U" backward-kill-line 
bindkey -a "^U" backward-kill-line 
bindkey "^?" backward-delete-char
bindkey -a 'L' vi-end-of-line
bindkey -a 'H' vi-beginning-of-line
bindkey '^a' vi-beginning-of-line
bindkey '^e' vi-end-of-line

# set RPROMPT to vi mode 
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

# C-x C-e edit this command in vim 
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

# [Shift - Tab] move through the completion menu backwards :)
if [[ "${terminfo[kcbt]}" != "" ]]; then
	bindkey "${terminfo[kcbt]}" reverse-menu-complete   # [Shift-Tab] - move through the completion menu backwards
fi
