# This file must be placed in $HOME/Documents/GitHub/Dotfiles
# It must be symlinked to $HOME/.zshenv

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

## Sounds
export SOUNDS=~/Documents/Github/Dotfiles/sounds

## Research Space

### File Store
export RS_FILE_BASE="$HOME/Documents/researchspaceFStore"

### Useful directories
export RS_ROOT="$HOME/Documents/GitHub/rspace-web"
export RS_UI="$RS_ROOT/src/main/webapp/ui"
