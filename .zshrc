# -------------------------------------------------------------------
# Mac helper aliases
# -------------------------------------------------------------------

# Show/hide hidden files finder (starting with a `.`)
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Delete auto-generated `.DS_Store` files
alias deleteDSFiles="find . -name '.DS_Store' -type f -delete"

# Flush the DNS cache (helpful if you’re playing with local DNS)
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"

# -------------------------------------------------------------------
# Directory commands
# -------------------------------------------------------------------

# Listing directories
alias ll="ls -l"
alias la="ls -la"

# Changing directories
alias cdc="cd ~/Code/"
alias cds="cd ~/Code/SideProjects"
alias cdw="cd ~/Code/Websites"

# -------------------------------------------------------------------
# Git stuff
# -------------------------------------------------------------------

# git
alias g="git"

# git add all
alias ga="git add --all"

# git commit
alias gc="git commit -v"
alias gc!='git commit -v --amend'

# git checkout
alias gco="git checkout"

# git checkout branch
alias gcb="git checkout -b"

# git diff
alias gd="git diff"

# git fetch
alias gf="git fetch"

# git pull
alias gl="git pull"

# git merge
alias gm="git merge"

# git log
alias glo='git log --oneline --decorate --graph'

# git push
alias gp="git push"

# git status
alias gs="git status"


# -------------------------------------------------------------------
# Node.js
# -------------------------------------------------------------------

# Config for nvm, which lets us switch Node versions easily (https://github.com/creationix/nvm)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# -------------------------------------------------------------------
# Starship.rs
# -------------------------------------------------------------------

# custom prompt via https://starship.rs
eval "$(starship init zsh)"
