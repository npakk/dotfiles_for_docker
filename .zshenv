export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export ZDOTDIR="$HOME/.config/zsh"
export FPATH="$ZDOTDIR/autoload/:$FPATH"
if [ -e $XDG_CONFIG_HOME/zsh/.zcompdump ]; then
    rm $XDG_CONFIG_HOME/zsh/.zcompdump
fi
