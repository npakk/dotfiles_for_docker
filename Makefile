.PHONY: all
all: install

install: Brewfile ./scripts/gitconfig.local.sh
	@brew bundle --file Brewfile
	@chmod +x ./scripts/gitconfig.local.sh
	@./scripts/gitconfig.local.sh
	@rm -f ~/.config/zsh/.zcompdump
	@tmux
	@echo "press prefix+I"

update:
	@brew update
	@brew upgrade
	@brew cleanup
