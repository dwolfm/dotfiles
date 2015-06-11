# dwolfm ZSH CONF
# Path to your oh-my-zsh installation.
export ZSH=/Users/drwizzard/.oh-my-zsh
source $HOME/.alias

# load oh-my-zsh plugins
plugins=(git)
plugins=(colorize)
source $ZSH/oh-my-zsh.sh

# set globals  
PS1='%{$fg_bold[red]%}%m%{$reset_color%}:%{$fg[cyan]%}%c%{$reset_color%}:%{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}% %# '
CASE_SENSITIVE="true"                                                   # dont let me cheat
export EDITOR='/usr/local/bin/vim'                                      # use newest vim
ZSH_THEME="mrtazz"                                                      # good starter
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go/packages
export NODE_PATH=$HOME/.node/lib/node_modules                           # set node modules path
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin" # set system exec path
export PATH=$GOROOT/bin:$GOPATH/bin:$HOME/.go/bin:$PATH
export PATH=$PATH:$HOME/.node/bin:$HOME/.sh/nacnud/bin/:$HOME/.sh/bin   # set node / my exec path
export LSCOLORS=gxfxcxdxcxegedabagacad                                  # change default ls colors

# set pushd options
setopt auto_pushd # mk cd push old dir on dirstack
setopt pushd_ignore_dups # no dup in dirstack
setopt pushd_silent # no printing dirstack after pushd or popd

# set zsh history options
HISTFILE=~/.zsh_history
HISTSIZE=1024                  # big history
SAVEHIST=1024                  # big history
setopt no_share_history        # disable share history between sessions
setopt append_history          # append to history
setopt inc_append_history      # add commands to hist as you enter them
setopt bang_hist               # !keyword

#set zsh options 
setopt extended_glob    # activate complex globbbbbbing
setopt glob_dots        # include dotfiles in globing
setopt print_exit_value # print exit value if not 0
setopt no_clobber       # let me overwrite files
setopt rm_star_silent   # dont ask me if i want to delete
setopt chase_links      # resolve symlinks

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
bindkey '^r' history-incremental-pattern-search-backward

# set RPROMPT to vi mode 
vim_ins_mode="%{$fg_bold[green]%}-- INSERT --%{$reset_color%}%"
vim_nrm_mode="%{$fg_bold[red]%}-- NORMAL --%{$reset_color%}%"

function zle-line-init zle-keymap-select {
RPS1="${${KEYMAP/vicmd/$vim_nrm_mode}/(main|viins)/$vim_ins_mode}"
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

