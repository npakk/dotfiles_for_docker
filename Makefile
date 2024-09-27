.PHONY: all
all: install

install: import ./scripts/gitconfig.local.sh ~/.config/zsh/.zcompdump
	@chmod +x ./scripts/gitconfig.local.sh
	@./scripts/gitconfig.local.sh
	@rm -f ~/.config/zsh/.zcompdump

update:
	@brew update
	@brew upgrade
	@brew cleanup

import: Brewfile
	@brew bundle --file Brewfile

export:
	@brew bundle dump -f
