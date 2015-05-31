# Path to your oh-my-zsh installation.
export ZSH=/Users/drwizzard/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mrtazz"

CASE_SENSITIVE="true"

# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)

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
