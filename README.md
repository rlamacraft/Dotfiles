# Dotfiles
My personal config files for a variety of programs that make up my development environment

## Setup

### Step 1: Clone this repo 
- Must be to $HOME/Documents/GitHub/


### Step 2: Tools to install
1. Zsh, if not installed
2. Tmux
3. Vim, if not installed
   - Vim-repeat: https://github.com/tpope/vim-repeat
   - Vim-surround: https://github.com/tpope/vim-surround
   - Vim-commentary: https://github.com/tpope/vim-commentary
4. Typefaces
   - [Space Mono Typeface](https://fonts.google.com/specimen/Space+Mono), changing the terminal when you do
   - [Source Code Pro](https://fonts.google.com/specimen/Source+Code+Pro), for spacemacs defaults
5. [tldr](https://github.com/tldr-pages/tldr)
```
brew install tldr
```
6. Universal Ctags
```
brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags
```
  - On macOS, the built in ctags may remain higher on the PATH, because this should probably only be called from command aliases

### Step 3: Symlinking

**zsh**
Zsh configuration files, simply symlink as follows
```
export dotfiles=$dotfiles
ln -s $dotfiles/.zshrc $HOME/.zshrc
ln -s $dotfiles/.zshenv $HOME/.zshenv
. ~/.zshrc
```

**vim**
```
ln -s $dotfiles/.vimrc $HOME/.vimrc
ln -s $dotfiles/.vim $HOME/.vim
```

**tmux**
Tmux configure file, simply symlink as follows
```
ln -s $dotfiles/.tmux.conf $HOME/.tmux.conf
```
Then add one of the following depending upon the colour theme under Terminal > Settings > Profiles > Default > Shell > Startup > Run command
```
tmux new-session \; setenv dark_mode 0
```
or
```
tmux new-session \; setenv dark_mode 1
```
Then finally go to Terminal > Settings > Profiles > Default > Window and uncheck everything except dimensions in the top section and then unchecking everything but the "Active process name" and "Show activity indidicator" on the Tab tab


### Step 4: Mac specific stuff
- Follow the instructions in the "macSetup.org" file

### Step 5: Using the sounds files
Here is an example
``` sh
echo 'done
[ERROR]' | awk '{print $0}; $0 ~ "done" {system("afplay $SOUNDS/done/1.mp3 &")}; $0 ~ "ERROR" {system("afplay $SOUNDS/error/1.mp3 &")}'
```
Sources of audio files
- [Zapsplat](zapsplat.com)

### Step 6: Additional Vim Setup
Here's some Vim plugins you may want to install
- https://github.com/tpope/vim-surround

## Scripts

`start.sh` -- run when starting work on Monday, to get everything going
