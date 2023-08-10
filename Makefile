DOTFILES_DIR := $(shell echo $(HOME)/dotfiles)
SHELL        := /bin/sh

.PHONY: all

all: link

link:
	ln -sf $(DOTFILES_DIR)/git/config $(HOME)/.gitconfig
	ln -sf $(DOTFILES_DIR)/kitty/kitty.conf $(HOME)/.config/kitty
	ln -sf $(DOTFILES_DIR)/nvim $(HOME)/.config/nvim
	ln -sf $(DOTFILES_DIR)/ssh/config $(HOME)/.ssh/config
	ln -sf $(DOTFILES_DIR)/tmux/tmux.conf $(HOME)/.tmux.conf
	ln -sf $(DOTFILES_DIR)/vim/vimrc $(HOME)/.vimrc
	ln -sf $(DOTFILES_DIR)/vscode/settings.json $(HOME)/Library/'Application Support'/Code/User/settings.json
	ln -sf $(DOTFILES_DIR)/zsh/zshrc $(HOME)/.zshrc
