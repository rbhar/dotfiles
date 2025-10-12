DOTFILES_DIR := $(shell echo $(HOME)/dotfiles)
SHELL        := /bin/sh

.PHONY: all dirs link

all: link

dirs:
	mkdir -p $(HOME)/.config
	mkdir -p $(HOME)/.config/git
	mkdir -p $(HOME)/.config/kitty
	mkdir -p $(HOME)/.ssh
	mkdir -p $(HOME)/Library/Application\ Support/Code/User
	mkdir -p $(HOME)/Library/Application\ Support/Cursor/User

link: dirs
	ln -sfn $(DOTFILES_DIR)/git/config $(HOME)/.gitconfig
	ln -sfn $(DOTFILES_DIR)/git/ignore $(HOME)/.config/git/ignore
	ln -sfn $(DOTFILES_DIR)/kitty/kitty.conf $(HOME)/.config/kitty/kitty.conf
	ln -sfn $(DOTFILES_DIR)/nvim $(HOME)/.config/nvim
	ln -sfn $(DOTFILES_DIR)/ssh/config $(HOME)/.ssh/config
	ln -sfn $(DOTFILES_DIR)/tmux/tmux.conf $(HOME)/.tmux.conf
	ln -sfn $(DOTFILES_DIR)/vim/vimrc $(HOME)/.vimrc
	ln -sfn $(DOTFILES_DIR)/vscode/settings.json $(HOME)/Library/Application\ Support/Cursor/User/settings.json
	ln -sfn $(DOTFILES_DIR)/yazi $(HOME)/.config/yazi
	ln -sfn $(DOTFILES_DIR)/zsh/zshrc $(HOME)/.zshrc
