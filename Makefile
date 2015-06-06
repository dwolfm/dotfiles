DOTFILES := $(shell pwd)

gather:
	cp -f ${HOME}/.bashrc $(DOTFILES)/bashrc
	cp -f ${HOME}/.vimrc $(DOTFILES)/vimrc
	cp -f ${HOME}/.viewrc $(DOTFILES)/viewrc
	cp -f ${HOME}/.gitconfig $(DOTFILES)/gitconfig
	cp -f ${HOME}/.tmux.conf $(DOTFILES)/tmux.conf
	cp -f ${HOME}/.tern-project $(DOTFILES)/tern-project
	cp -rf ${HOME}/.sh/* $(DOTFILES)/sh/
	cp -rf $(HOME)/.psqlrc $(DOTFILES)/psqlrc
	cp -rf  $(HOME)/Library/Preferences/com.googlecode.iterm2.plist $(DOTFILES)/preferences/
	cp -rf $(HOME)/.alias $(DOTFILES)/alias
	cp -rf $(HOME)/.zshrc $(DOTFILES)/zshrc

plant:
	rm -rf $(DOTFILES)/bak/*
	cp -f ${HOME}/.bashrc $(DOTFILES)/bak/bashrc.bak
	cp -f ${HOME}/.vimrc $(DOTFILES)/bak/vimrc.bak
	cp -f ${HOME}/.viewrc $(DOTFILES)/bak/viewrc.bak
	cp -f ${HOME}/.gitconfig $(DOTFILES)/bak/gitconfig.bak
	cp -f ${HOME}/.tmux.conf $(DOTFILES)/bak/tmux.conf.bak
	cp -f ${HOME}/.tern-project $(DOTFILES)/bak/tern-project.bak
	cp -f $(HOME)/.alias $(DOTFILES)/bak/alias
	cp -rf $(HOME)/.psqlrc $(DOTFILES)/bak/psqlrc
	cp -rf $(HOME)/.zshrc $(DOTFILES)/bak/zshrc
	rm -rf $(DOTFILES)/bak/sh.bak/*
	mkdir $(DOTFILES)/bak/sh.bak
	cp -rf ${HOME}/.sh/* $(DOTFILES)/bak/sh.bak/
	mkdir $(DOTFILES)/bak/preferences
	cp -rf  $(HOME)/Library/Preferences/com.googlecode.iterm2.plist $(DOTFILES)/bak/preferences/
	cp -f $(DOTFILES)/bashrc ${HOME}/.bashrc 
	cp -f $(DOTFILES)/vimrc ${HOME}/.vimrc 
	cp -f $(DOTFILES)/viewrc ${HOME}/.viewrc
	cp -f $(DOTFILES)/gitconfig ${HOME}/.gitconfig 
	cp -f $(DOTFILES)/tmux.conf ${HOME}/.tmux.conf 
	cp -f $(DOTFILES)/tern-project ${HOME}/.tern-project 
	cp -rf $(DOTFILES)/sh/* ${HOME}/.sh/ 
	cp -r $(DOTFILES)/psqlrc $(HOME)/.psqlrc
	cp -rf $(DOTFILES)/preferences/* $(HOME)/Library/Preferences/ 
	cp -rf $(DOTFILES)/alias $(HOME)/.alias 
	cp -rf $(DOTFILES)/zshrc $(HOME)/.zshrc
