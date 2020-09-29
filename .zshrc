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

## Sounds
export SOUNDS=~/Documents/Github/Dotfiles/sounds

## Research Space

### File Store
export RS_FILE_BASE="$HOME/Documents/researchspaceFStore"

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

## ResearchSpace
alias mvn-drop='mvn clean jetty:run -Denvironment=drop-recreate-db -DRS.devlogLevel=INFO \
    -Dspring.profiles.active=run -Dliquibase.context=dev-test \
    -DgenerateReactDist -Dlog4j.configuration=log4j-dev.xml'

alias mvn-keep='mvn clean jetty:run -Denvironment=keepdbintact -DRS.devlogLevel=INFO \
    -Dspring.profiles.active=run -Dliquibase.context=dev-test \
    -DgenerateReactDist -Dlog4j.configuration=log4j-dev.xml'

# Ensure terminal allows for emacs keybindings: ctrl-e, ctrl-a, etc
bindkey -e
