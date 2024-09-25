.PHONY: all
all: install

install: Brewfile ./scripts/gitconfig.local.sh ~/.config/zsh/.zcompdump
	@brew bundle --file Brewfile
	@chmod +x ./scripts/gitconfig.local.sh
	@./scripts/gitconfig.local.sh
	@rm -f ~/.config/zsh/.zcompdump

update:
	@brew update
	@brew upgrade
	@brew cleanup
