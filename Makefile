DOTFILES := $(shell pwd)

gather:
	cp -f ${HOME}/.bashrc $(DOTFILES)/bashrc
	cp -f ${HOME}/.vimrc $(DOTFILES)/vimrc
	cp -f ${HOME}/.gitconfig $(DOTFILES)/gitconfig
	cp -f ${HOME}/.tmux.conf $(DOTFILES)/tmux.conf
	cp -f ${HOME}/.tern-project $(DOTFILES)/tern-project
	cp -rf ${HOME}/.bash/* $(DOTFILES)/bash/
	cp -rf $(HOME)/.psqlrc $(DOTFILES)/psqlrc
	cp -rf  $(HOME)/Library/Preferences/com.googlecode.iterm2.plist $(DOTFILES)/preferences/

plant:
	rm -rf $(DOTFILES)/bak/*
	cp -f ${HOME}/.bashrc $(DOTFILES)/bak/bashrc.bak
	cp -f ${HOME}/.vimrc $(DOTFILES)/bak/vimrc.bak
	cp -f ${HOME}/.gitconfig $(DOTFILES)/bak/gitconfig.bak
	cp -f ${HOME}/.tmux.conf $(DOTFILES)/bak/tmux.conf.bak
	cp -f ${HOME}/.tern-project $(DOTFILES)/bak/tern-project.bak
	cp -rf $(HOME)/.psqlrc $(DOTFILES)/bak/psqlrc
	rm -rf $(DOTFILES)/bak/bash.bak/*
	mkdir $(DOTFILES)/bak/bash.bak
	cp -rf ${HOME}/.bash/* $(DOTFILES)/bak/bash.bak/
	mkdir $(DOTFILES)/bak/preferences
	cp -rf  $(HOME)/Library/Preferences/com.googlecode.iterm2.plist $(DOTFILES)/bak/preferences/
	cp -f $(DOTFILES)/bashrc ${HOME}/.bashrc 
	cp -f $(DOTFILES)/vimrc ${HOME}/.vimrc 
	cp -f $(DOTFILES)/gitconfig ${HOME}/.gitconfig 
	cp -f $(DOTFILES)/tmux.conf ${HOME}/.tmux.conf 
	cp -f $(DOTFILES)/tern-project ${HOME}/.tern-project 
	cp -rf $(DOTFILES)/bash/* ${HOME}/.bash/ 
	cp -r $(DOTFILES)/psqlrc $(HOME)/.psqlrc
	cp -rf $(DOTFILES)/preferences/* $(HOME)/Library/Preferences/ 
