# Colorize the ls output
alias ls='ls --color=auto'
# Use a long listing format
alias ll='ls -la'
# Show hidden files
alias l.='ls -d .* --color=auto'
# Some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
# Make them colorful.
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# ssh aliases
# set TERM
alias ssh='TERM=xterm-256color ssh'

#
# Third-party applications
#
# lfcd.
LFCD="/home/bo/.config/lf/lfcd.sh"
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi
# Signal with tray.
alias signal-desktop="signal-desktop --use-tray-icon"
# Cat with wings.
alias cat=bat
# Zathura leaves terminal.
alias zathura="zathura --fork"
# Give exa a chance.
alias ls='exa -snew'
# Feh image viewer, default options.
alias feh="feh --scale-down --image-bg white"

# Directory shortcuts
hash -d basty="${HOME}/work/basty"
hash -d MuDCoD="${HOME}/work/MuDCoD"
hash -d research-MuDCoD="${HOME}/research/MuDCoD/"

# To track configurations and dotfiles
alias config='/usr/bin/git --git-dir=$HOME/misc/bodot/ --work-tree=$HOME'
