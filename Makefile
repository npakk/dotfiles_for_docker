.PHONY: all
all: install update

install: Brewfile ./scripts/gitconfig.local.sh
	@brew bundle --file Brewfile
	@chmod +x ./scripts/gitconfig.local.sh
	@./scripts/gitconfig.local.sh

update: Brewfile
	@brew update
	@brew upgrade
	@brew cleanup
