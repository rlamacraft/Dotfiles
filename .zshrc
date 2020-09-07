# This file must be placed in $HOME/Documents/GitHub/Dotfiles
# It must be symlinked to $HOME/.zshrc

# fail on unset variables
set -u

# env variables

## EDITOR
EDITOR="emacsclient -c --alternate-editor='vim'"
export EDITOR

## PATH
path+=('/Applications/Firefox.app/Contents/MacOS') # firefox, for opening links in emacs
path+=('/usr/local/bin')
path+=("$HOME/.local/bin/")
path+=("$HOME/bin")
path+=("$HOME/ShellScripts")
path+=("$HOME/bin/apache-maven-3.6.3/bin")
export PATH

## iCloud
export ICLOUD="$HOME/Library/Mobile\ Documents"

## Prompt
PROMPT="> "
export PROMPT
unsetopt PROMPT_SP

# Command aliases and similar

## Useful static local Web server on passed port number
pythonServer() {
	python3 -m http.server $1;
}

## Open the passed URL in Chrome; useful for local dev work
chrome() {
	/usr/bin/open -a "/Applications/Google Chrome.app" $1
}

## Open current directory in Finder.app
finder() {
	open $PWD
}

## Login script for the bandit game on overthewire.com
bandit() {
	ssh bandit$1@bandit.labs.overthewire.org -p 2220
}

## Emacs readonly
ev() {
    emacs "$1" --eval '(setq buffer-read-only t)'
}

## Play a done sound
alias done="afplay $HOME/Documents/GitHub/Dotfiles/sounds/done.mp3"
