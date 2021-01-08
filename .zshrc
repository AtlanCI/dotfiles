export USER='majin.dev'
export LANGUAGE=en_US.UTF-8
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/bytedance/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
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
# DISABLE_MAGIC_FUNCTIONS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

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

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

plugins=(
 you-should-use
 zsh-autosuggestions
 brew
 fast-syntax-highlighting
 history-substring-search
 autojump
 extract
 git-open
 history
 sudo
 npm
 node
 vi-mode
 command-not-found
 cp
 zsh-completions
 fzf-tab
)
autoload -U compinit && compinit

DEFAULT_USER=bytedance

# 测试 IP
alias cat='bat'

alias config="code ~/.zshrc"
alias reload="source ~/.zshrc"

alias npmclean="rm -rf node_modules && rm -rf package-lock.json"
alias npmreinstall="rm -rf node_modules && rm -rf package-lock.json && npm install"

alias g="git"
alias typora="open -a typora"

function copy() {
	pbcopy < $1
}

alias now='date "+%Y-%m-%d %H:%M:%S"'

alias -s {py,js,css,c,java,ts,json}='code'      # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s md='code'
alias -s txt='vim'

alias mkdir='mkdir -pv'

# 查看文件/目录大小

alias size='f(){ du -sh $1* | sort -hr; }; f'

alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'

alias cls='clear'

alias gs='git status'
alias gc='git checkout'
alias log="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

alias lock="pmset displaysleepnow"

alias kill="pkill"

alias npm="sudo npm"
alias yarn="sudo yarn"

alias weather='curl wttr.in'

alias python="python3"
alias pip="python3 -m pip"
alias bnpm="npm --registry=http://bnpm.byted.org"

bindkey ',' autosuggest-accept

fixZsh() {
	for f in $(compaudit)
	do
		sudo chown -R $(whoami):root $f
		sudo chmod -R 755 $f
	done
}

HIST_STAMPS="yyyy-mm-dd"
HISTFILE=~/.zsh_history
HISTSIZE=10000000
SAVEHIST=$HISTSIZE

setopt no_beep
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt no_flow_control
setopt transient_rprompt
setopt HIST_REDUCE_BLANKS

setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.
setopt APPEND_HISTORY            # append to history file
setopt HIST_NO_STORE             # Don't store history commands

setopt prompt_subst
setopt CORRECT
setopt complete_in_word
setopt IGNORE_EOF

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:default' list-colors ""
# pasting with tabs doesn't perform completion

zstyle ':completion:*' insert-tab pending

autoload -Uz compinit
compinit

# screenfetch
neofetch

export FZF_DEFAULT_OPTS='--reverse --border --preview "bat --color=always --line-range :500 {}"'
# export FZF_DEFAULT_OPTS='--preview "bat {}" --height 60% --reverse --border'

export FZF_DEFAULT_COMMAND='ag --ignore-dir .git --ignore-dir .idea --ignore-dir .vscode --ignore-dir node_modules --ignore-dir pkg --ignore-dir bin --ignore-dir github.com --ignore-dir dist  -g ""'
# 当补全命令的开关时禁用排序

zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'

unsetopt correct

source $ZSH/oh-my-zsh.sh

export NODE_OPTIONS=--max_old_space_size=4096
export EDITOR='code'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

