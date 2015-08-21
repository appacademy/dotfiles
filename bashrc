source ~/.dotfiles/git-completion.bash
source ~/.dotfiles/git-prompt.sh

# color constants
RED='\[\e[0;31m\]'
WHITE='\[\e[1;37m\]'
RESET='\[\e[0m\]'

# prompt with git branch info
export PS1=''$RED'\w'$WHITE'$(__git_ps1)'$RED'\$'$RESET' '

# make `g` behave like `git status` with no args, or `git` with args
g () {
  if [ $# -eq 0 ]
  then
    git status
  else
    git "$@"
  fi
}

__git_complete g _git

MILLION=1000000
export HISTFILESIZE=$MILLION
export HISTSIZE=$MILLION

export EDITOR="vim"

# update bash history after each command
export PROMPT_COMMAND="history -a"

# Recommended by rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH="$PATH:$HOME/.bin"
export PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"

if [ -f ~/.nvm/nvm.sh ]; then
  source ~/.nvm/nvm.sh
  nvm alias default 0.10 > /dev/null
fi

# Load aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Load local configuration
[[ -f ~/.bashrc.local ]] && source ~/.bashrc.local
