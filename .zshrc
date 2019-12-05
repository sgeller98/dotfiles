# Path to your oh-my-zsh installation.
export ZSH=/Users/$(whoami)/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bira"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx z yarn)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Colorized ls output
alias ls='ls --color=auto'

# Homebrew Shortcut
alias brewup='brew update && brew upgrade && brew cleanup'

# zsh config
alias zshconfig="vim ~/.zshrc"

# replace cat with bat
alias cat="bat"

# dotfile management
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Enable zsh syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="/usr/local/opt/openssl/bin:$PATH"

PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# added by Miniconda3 4.3.21 installer
export PATH="/Users/trexdex/miniconda3/bin:$PATH"

# homebrew sbin
export PATH="/usr/local/sbin:$PATH"

# Add android tools to PATH
export ANDROID_HOME=/Users/trexdex/Library/Android/sdk 
export PATH=$PATH:$ANDROID_HOME/tools 
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH/:$ANDROID_HOME/platform-tools

# add ruby executables to path
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"

# Make vim default editor
export EDITOR='vim'

# Enable z
. /usr/local/etc/profile.d/z.sh

# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# thefuck

eval $(thefuck --alias)

# use neovim instead of vim
if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi

# load rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
