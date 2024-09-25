.PHONY: all
all: Brewfile gitconfig.local.sh install update

install: Brewfile gitconfig.local.sh
	@brew bundle --file Brewfile
	@chmod +x ./gitconfig.local.sh
	@./gitconfig.local.sh

update: Brewfile
	@brew update
	@brew upgrade
	@brew cleanup
