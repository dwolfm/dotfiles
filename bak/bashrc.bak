#lul wat
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh

# setup promt header
PS1="\[\033[01;31m\]\u\[\033[0;37m\]@\[\033[01;31m\]\h\[\033[00m\]:\[\033[01;35m\]\W\[\033[00m\]\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtcyn\]\$\[$txtwht\] "

#change dir colors
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# volume
export VOL=`sudo osascript -e "output volume of (get volume settings)"`

setVolume(){
	if [ $# -eq 0 ]; then
		VOL=`sudo osascript -e "output volume of (get volume settings)"`
	else
		VOL=$1
	fi
	sudo osascript -e "set volume output volume $VOL"
	echo "volume: $VOL"
}
alias v=setVolume
alias vu='VOL=`expr $VOL + 10` && sudo osascript -e "set volume output volume $VOL" && echo "volume: $VOL"'
alias vd='VOL=`expr $VOL - 10` && sudo osascript -e "set volume output volume $VOL" && echo "volume: $VOL"'
alias vm='VOL=7 && sudo osascript -e "set Volume $VOL" && echo "volume: $VOL"'
alias vs='echo "volume: $VOL"'

# dotfiles
cmess(){  
	export cmessage=`echo "changed files $(gs -s | tr '\n' ',' |sed 's/,/, /g' | sed 's/..$//')"`;
	echo $txtgrn $cmessage
	echo $txtwht
}

alias dotgather="pushd $PWD && cd $HOME/Documents/gitz/dotfiles && make gather && git add -A  && cmess && git commit -a -m \"$(echo $cmessage)\" --status  && git push origin master && popd"
alias dotplant="pushd $PWD && cd $HOME/Documents/gitz/dotfiles && make plant && popd"

# dev
alias pgup="postgres -D $HOME/.postgres"
alias pgdown="killall postgres"
alias ddatadump="rm -rf $HOME/Library/Developer/Xcode/DerivedData/*"
alias vis="vim -S Session.vim"
alias rbrc="source $HOME/.bashrc"
alias rtrc="tmux source-file $HOME/.tmux.conf"

# usefull navigation and location aliases
alias pcd='pushd $PWD && cd'
alias ..='cd ..'
alias ls='ls -G'
alias ll='ls -lahG'
alias la='ls -aG'
alias l='ls -1G'

#quick hax
alias pmkdir='mkdir -p'
alias psg='ps -opid,command |grep '


# jump to dir
alias gitz="cd $HOME/Documents/gitz"
alias ddata="cd $HOME/Library/Developer/Xcode/DerivedData"

# env var
export GITZ="$HOME/Documents/gitz"
export DOTFILES="$GITZ/dotfiles"

export GBRANCH=`echo "$git_branch" | cut -d "(" -f2 | cut -d ")" -f1`
# usefull git aliases
alias gc='git commit -a -m'
alias gpush='git push origin'
alias gpull='git pull origin'
alias gbpush='gpush $GBRANCH'
alias gbpull='gpull $GBRANCH'
alias gs='git status'
alias ga='git add -A'
alias grao='git remote add origin'
alias gbranch='git branch'
alias gcheck='git checkout'
alias gmerge='git merge'
alias glog='git log'
alias greset='git reset'

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
