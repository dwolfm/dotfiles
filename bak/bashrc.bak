export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh

# setup promt header
PS1="\[\033[01;31m\]\u\[\033[0;37m\]@\[\033[01;31m\]\h\[\033[00m\]:\[\033[01;35m\]\W\[\033[00m\]\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtcyn\]\$\[$txtwht\] "

#change dir colors
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# volume
export VOL=0
setVolume(){
	if [ $# -eq 0 ]; then
		VOL=0
	else
		VOL=$1
	fi
	sudo osascript -e "set Volume $VOL"
	echo "volume: $VOL"
}
alias v=setVolume
alias vu='VOL=`expr $VOL + 1` && sudo osascript -e "set Volume $VOL" && echo "volume: $VOL"'
alias vd='VOL=`expr $VOL - 1` && sudo osascript -e "set Volume $VOL" && echo "volume: $VOL"'
alias vm='VOL=7 && sudo osascript -e "set Volume $VOL" && echo "volume: $VOL"'

# dotfiles
alias dotgather="pushd $PWD && cd $HOME/Documents/gitz/dotfiles && make gather && git add -A && git commit -a -m 'nother update' && git push origin master && popd"
alias dotplant="pushd $PWD && cd $HOME/Documents/gitz/dotfiles && make plant && popd"

# dev
alias pgup="postgres -D $HOME/.postgres"
alias pgdown="killall -6 postgres"
alias ddatadump="rm -rf $HOME/Library/Developer/Xcode/DerivedData/*"

# usefull navigation and location aliases
alias pcd='pushd $PWD && cd'
alias ..='cd ..'
alias ls='ls -G'
alias ll='ls -lahG'
alias la='ls -aG'
alias l='ls -1G'

# jump to dir
alias gitz="cd $HOME/Documents/gitz"
alias ddata="cd $HOME/Library/Developer/Xcode/DerivedData"

# env var
export GITZ="$HOME/Documents/gitz"
export DOTFILES="$GITZ/dotfiles"

# usefull git aliases
alias gc='git commit -a -m'
alias gpush='git push origin master'
alias gpull='git pull origin master'
alias gs='git status'
alias ga='git add -A'
alias grao='git remote add origin'
alias gch='git checkout'
alias gl='git log'

#use brew vim
alias vim='/usr/local/bin/vim'
export EDITOR='/usr/local/bin/vim'

# why would you ever not work inside of tmux
tmux -2

# set paths
export NODE_PATH=$HOME/.node/lib/node_modules
export PATH=$HOME/.node/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.bash/nacnud/bin/:$HOME/.bash/bin
  
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
