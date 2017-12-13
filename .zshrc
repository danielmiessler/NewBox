#######################################################
# Daniel Miessler's zsh configuration
# Updated: April 2017
#######################################################

# Editor

export EDITOR=vim
export VISUAL=vim
export GREP_OPTIONS='--color=always'

# Source Prezto

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

bindkey -v
bindkey -M viins 'jk' vi-cmd-mode

# History search

bindkey "^R" history-incremental-search-backward
bindkey "^F" history-incremental-search-forward

export PATH=/Library/TeX/texbin:$PATH

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

## Command history configuration

if [ -z "$HISTFILE" ]; then
    HISTFILE=$HOME/.zsh_history
fi

HISTSIZE=10000
SAVEHIST=10000

# Show history
case $HIST_STAMPS in
  "mm/dd/yyyy") alias history='fc -fl 1' ;;
  "dd.mm.yyyy") alias history='fc -El 1' ;;
  "yyyy-mm-dd") alias history='fc -il 1' ;;
  *) alias history='fc -l 1' ;;
esac

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data

# Aliases

alias bt="wget http://cachefly.cachefly.net/400mb.test > /dev/null"
alias d="cd /Users/daniel/Desktop"
alias www="cd /Users/daniel/Development/htdocs/"
alias zconf="vi ~/.zshrc"
alias zsource="source ~/.zshrc"
alias zhup="source ~/.zshrc"
alias vconf="vim ~/.vimrc"
alias v="cd ~/.vim"
alias b="cd ~/.vim/bundle"
alias nc="ncat"
alias traceroute="/usr/local/sbin/mtr"
alias fd="dscacheutil -flushcache"
alias ds="dd if=/dev/zero of=/tmp/output.img bs=8k count=256k"
alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
alias rm="rm -f"
alias ds="du -hs * | sort -h"
alias isaid="sudo"
alias fucking="sudo"
alias amir="ssh amir"
alias sniff="sudo tcpdump -n -A -s0 port http or port ftp or port smtp or port imap or port pop3 | grep -i 'pass=|pwd=|log=|login=|user=|username=|pw=|passw=|passwd=|password=|pass:|user:|username:|password:|login:|pass |user ' --color=auto --line-buffered -B20"
alias sshconf="vi ~/.ssh/config"
