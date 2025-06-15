# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:${HOME}/depot_tools"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export VISUAL=/usr/bin/nvim
export EDITOR="$VISUAL"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode web-search zoxide zsh-autosuggestions zsh-fzf-history-search)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
#

function from_hex() {
    python -c "print(0x$1)"
}

function to_decimal() {
    python -c "print('{:d}'.format($1))"
}

function to_hex() {
    python -c "print('{:x}'.format($1))"
}

function to_binary() {
    python -c "print('{:b}'.format($1))"
}

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls=lsd
alias v=nvim
alias lg=lazygit
#alias cd=z
alias cat=bat

alias xtd=from_hex
alias dtx=to_hex
alias dtb=to_binary
alias todec=to_decimal

alias dcu="docker compose up"
alias dcd="docker compose down -v"

alias mp4ff-info="/home/radum/go/bin/mp4ff-info"
alias vsc="code-insiders --enable-features=UseOzonePlatform --ozone-platform=wayland ."
alias zelwork="zellij --layout work"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fix for Charles Proxy
export _JAVA_AWT_WM_NONREPARENTING=1

export AWS_PROFILE=mediacreek
export PATH=/home/radum/.cargo/bin:$PATH
export PATH=/home/radum/.local/bin:$PATH
#export PATH=/home/linuxbrew/.linuxbrew/opt/llvm@14/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:$(go env GOPATH)/bin"
export PATH="$HOME/go/bin:$PATH"
# VSCode install, manually download the binaries, put them in /opt/vscode
export PATH=/opt/vscode/bin:$PATH 

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

bindkey '^[[Z' autosuggest-accept

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# opam configuration
# [[ ! -r /home/radum/.opam/opam-init/init.zsh ]] || source /home/radum/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
# eval $(opam env --switch=4.08.0 --set-switch) 
# eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
autoload -U compinit; compinit
export KUBECONFIG=~/.kube/config
export PYTHON_KEYRING_BACKEND=keyring.backends.null.Keyring

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
