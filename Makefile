install:
	@brew bundle --file Brewfile
	@chmod +x ./install.sh
	@./install.sh

update:
	@brew update
	@brew upgrade
	@brew cleanup
