# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


export PATH=$HOME/bin:$PATH
export PATH=$HOME/.istioctl/bin:$PATH
export PATH=$PATH:/Users/havan/dev/iOS-stuff/flutter/bin
export PATH=/Applications/IntelliJ\ IDEA.app/Contents/MacOS/:$PATH



# Path to your oh-my-zsh installation.
export ZSH="/Users/havan/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git Kubectl Kube-ps1)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



# Strange that you'd need a Datastore.... but that's how it works...
# need to rely in vCenter to correctly balance out where the VMs/data will reside eventually

export GOVC_URL="172.16.0.2"
export GOVC_USERNAME="hans.vandeweghe@lab.local"
export GOVC_PASSWORD="rqVwicAEQnEFtvQZaHu7DLQw-g"
export GOVC_DATACENTER="LAB"
export GOVC_DATASTORE="DATASTORE"
export GOVC_INSECURE=1


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


alias burpproxyshell='export HTTP_PROXY=http://127.0.0.1:8080 && export HTTPS_PROXY=http://127.0.0.1:8080'
alias centos='ssh havan@9.36.193.36'
alias isamautomate='ssh hans@vmwood928.munich.de.ibm.com'
alias vmnetreset='sudo ifconfig bridge101 down && sudo ifconfig bridge101 up'


eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"



# test to see if NVM slows my zsh terminal Hans
# right... this guy slows my zsh terminal startup time... do I really need nvm that much!?

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#HANS: https://apple.stackexchange.com/questions/296477/my-command-line-says-complete13-command-not-found-compdef
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion




# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/havan/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/havan/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/havan/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/havan/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<




eval "$(pyenv init -)"
#source <(kubectl completion zsh)
#source /usr/local/ibmcloud/autocomplete/zsh_autocomplete


autoload -Uz compinit
compinit

autoload -U +X bashcompinit
bashcompinit
source /usr/local/etc/bash_completion.d/az
source /usr/local/ibmcloud/autocomplete/zsh_autocomplete



# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"



# Not really using this a that much lately.. do I still need it?
export PATH="$PATH:~/Downloads/terraform-provider-esxi_1.10.0_darwin_amd64"

#source <(kubectl completion zsh)
alias k=kubectl
alias kn='kubectl config set-context --current --namespace'
complete -F __start_kubectl k

complete -o nospace -C /usr/local/bin/terraform terraform

export dry='--dry-run=client -o yaml'

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/havan/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

eval "$(_PIPENV_COMPLETE=zsh_source pipenv)"


# Load Angular CLI autocompletion.
source <(ng completion script)

# Created by `pipx` on 2023-02-10 11:10:17
export PATH="$PATH:/Users/havan/.local/bin"
eval "$(register-python-argcomplete pipx)"