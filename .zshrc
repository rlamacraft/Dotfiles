# This file must be symlinked to $HOME/.zshrc

# fail on unset variables
set -u

# Ensure terminal allows for emacs keybindings: ctrl-e, ctrl-a, etc
bindkey -e

# Interactive vars

## Prompt
PROMPT="> "
export PROMPT
unsetopt PROMPT_SP

# Command aliases and similar

## ls aliases
alias ls='ls -G'
alias ll='ls -lAhG'

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

function npm-ding() {
    npm run serve | awk '$0 ~ "ERROR" {system("afplay $SOUNDS/error/1.mp3 &")} $0 ~ "Hash:" {system("afplay -v 0.5 $SOUNDS/done/1.mp3 &")} {print $0}'
}

function modified-or-added() {
    git diff --cached --name-only --diff-filter=M --diff-filter=A | sed -e "s|src/main/webapp/ui/\(.*\)$|\1|"
}

function commit-eslint() {
    modified-or-added | xargs npx eslint --fix
}

# git

## last 20 commit messages
function gl() {
  git log --pretty="format:  %as %s" -n 20 --graph
}

## print git branch but with numbers
function gb() {
  git branch | cat -n
}

## checkout branch with number from gb
function gc() {
  git branch | sed "$1q;d" | xargs git checkout
}
