# dwolfm ZSH CONF
# Path to your oh-my-zsh installation.
export ZSH=/Users/drwizzard/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
source $HOME/.alias

export NODE_PATH=$HOME/.node/lib/node_modules                           # set node modules path
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin" # set system exec path
export PATH=$PATH:$HOME/.node/bin:$HOME/.sh/nacnud/bin/:$HOME/.sh/bin   # set node / my exec path
export LSCOLORS=gxfxcxdxcxegedabagacad                                  # change default ls colors

# set globals  
PS1='%{$fg_bold[red]%}%m%{$reset_color%}:%{$fg[cyan]%}%c%{$reset_color%}:%{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}% %# '
ZSH_THEME="mrtazz"
CASE_SENSITIVE="true"
export EDITOR='/usr/local/bin/vim'

# load oh-my-zsh plugins
plugins=(colorize)

#set zsh options 
setopt no_rm_star_silent # turn off delete file warning
unsetopt share_history   # disable share history between sessions
setopt no_share_history  # disable share history between sessions

# configrue zle
bindkey -v                           # enable vim mode
bindkey -M viins 'ii' vi-cmd-mode    # map ii to escape key
bindkey "^W" backward-kill-word      # ctl-w delete word backward insert mode
bindkey -a "^W" backward-kill-word   # ctl-w delete word backward normal mode
bindkey "^H" backward-delete-char    # Control-h also deletes the previous char
bindkey "^U" backward-kill-line      # ctl-u delete cur line insert mode
bindkey -a "^U" backward-kill-line   # ctl-u delete cur line normal mode
bindkey "^?" backward-delete-char    # delete key to work like normal
bindkey -a 'L' vi-end-of-line        # shift l jumps to end of line in normal mode
bindkey -a 'H' vi-beginning-of-line  # shift h jumps to beginning of lin in normal mode
bindkey '^a' vi-beginning-of-line    # ctl a jumps to beginning of line insert mode
bindkey -a '^a' vi-beginning-of-line # ctl a jumps to beginning of line normal mode
bindkey '^e' vi-end-of-line          # cta e jumps to end of line insert mode
bindkey -a '^e' vi-end-of-line       # cta e jumps to end of line normal mode

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

# why work outside tmux
tmux -2

