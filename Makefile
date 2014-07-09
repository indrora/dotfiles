#
# The makefile for @indrora's dotfiles.
# Makefiles are magical things.    <3
#

.PHONY: vim i3 zsh xres

DOTFILES_DIR=$(shell pwd)

vim:
	ln -s $(DOTFILES_DIR)/vim $(HOME)/.vim
	ln -s $(DOTFILES_DIR)/vimrc $(HOME)/.vimrc
	git clone "https://github.com/shougo/neobundle.vim" $(HOME)/.vim/bundle/neobundle.vim
	vim +NeoBundleInstall +qa
i3:
	ln -s $(DOTFILES_DIR)/i3 $(HOME)/.i3
	ln -s $(DOTFILES_DIR)/i3status.conf $(HOME)/.i3status.conf
zsh:
	ln -s $(DOTFILES_DIR)/zsh $(HOME)/.zsh
	ln -s $(DOTFILES_DIR)/zshrc $(HOME)/.zshrc
xres:
	ln -s $(DOTFILES_DIR)/Xresources $(HOME)/.Xresources

some: vim zsh
most: vim zsh xres
every: vim zsh xres i3
all: every


