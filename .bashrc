# Prevent Ctrl-S from freezing the terminal.
#stty -ixon

export TERM=xterm-256color

# Cleaner status
export PS1="\[$(tput bold)\]\[\033[38;5;24m\]\W\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;10m\]>\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
# Remove history limits
export HISTSIZE=
export HISTFILESIZE=

# Convenient aliases
alias ls="ls --color=auto"
alias la="ls -a --color=auto"
alias lah="ls -lah"
alias ll="ls -lh"
alias grep="grep --color=auto"
alias reset="reset && source ~/.bashrc"
alias reboot="sudo reboot"
alias gup="git checkout master && git pull upstream master --recurse-submodules"
alias g='grep -Irn'
alias grep='grep --color=auto --exclude-dir=.bzr --exclude-dir=.cvs --exclude-dir=.git --exclude-dir=.hg --exclude-dir=.svn --exclude-dir=.pytest_cache'
alias egrep='egrep --color=auto --exclude-dir=.bzr --exclude-dir=.cvs --exclude-dir=.git --exclude-dir=.hg --exclude-dir=.svn --exclude-dir=.pytest_cache'

# EPAD CTFBOX
alias ctf="docker run -it --rm --privileged --net=host -v $(pwd):/home/ctf/chall epadctf/ctfbox"

mkcd() {
  mkdir -p "$@" && cd "$@"
}

# Make xterm transparent
[ -n "$XTERM_VERSION" ] && transset-df -a >/dev/null

# Set US International keyboard, no dead keys
#setxkbmap -layout us -variant altgr-intl -option nodeadkeys

