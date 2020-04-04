# Zsh config

## Usage

1. Clone this repo or download it into some directory
2. In you `.zshrc` file, source zshrc file
3. By default, it will not enable any plugin
4. You can set `$ZSH_PLUGINS` before source zshrc file to enable plugins


**Example:**

```bash
# Some of your config

export ZSH_PLUGINS=( apt bundler pip rubygems rvm tmux )

source "$HOME/.dotfiles/zsh.d/zshrc"

# Some of your config
```
