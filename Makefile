SHELL := /bin/zsh

install:
	mkdir -p ~/.cache/zsh \
	~/.config/zsh \
	~/.config/git \
	~/.config/gh \
	~/.config/lazygit \
	~/.config/nvim
	ln -s ~/dotfiles/.zshenv ~/.zshenv
	ln -s ~/dotfiles/.gitconfig ~/.gitconfig
	ln -s ~/dotfiles/.config/zsh/.zshrc ~/.config/zsh/.zshrc
	ln -s ~/dotfiles/.config/zsh/autoload ~/.config/zsh/autoload
	ln -s ~/dotfiles/.config/git/ignore ~/.config/git/ignore
	ln -s ~/dotfiles/.config/gh/config.yml ~/.config/gh/config.yml
	ln -s ~/dotfiles/.config/lazygit/config.yml ~/.config/lazygit/config.yml
	ln -s ~/dotfiles/.config/nvim/init.lua ~/.config/nvim/init.lua
	ln -s ~/dotfiles/.config/nvim/after ~/.config/nvim/after
	ln -s ~/dotfiles/.config/nvim/spell ~/.config/nvim/spell
	ln -s ~/dotfiles/.config/nvim/lua ~/.config/nvim/lua
	ln -s ~/dotfiles/.config/nvim/snippets ~/.config/nvim/snippets
	ln -s ~/dotfiles/.config/nvim/stylua.toml ~/.config/nvim/stylua.toml
	ln -s ~/dotfiles/.config/nvim/selene.toml ~/.config/nvim/selene.toml
	ln -s ~/dotfiles/.config/nvim/vim.toml ~/.config/nvim/vim.toml
	# brew bundle --file ./Brewfile
	source ~/.zshenv
