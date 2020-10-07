# Dotfiles
My personal config files for a variety of programs that make up my development environment

## Step 1: Clone this repo 
- Must be to $HOME/Documents/GitHub/


## Step 2: Tools to install
1. Zsh, if not installed
2. Emacs, if not installed
3. [Spacemacs](https://www.spacemacs.org)
4. Tmux
5. Typefaces
   - [Space Mono Typeface](https://fonts.google.com/specimen/Space+Mono), changing the terminal when you do
   - [Source Code Pro](https://fonts.google.com/specimen/Source+Code+Pro), for spacemacs defaults
6. [tldr](https://github.com/tldr-pages/tldr)
```
brew install tldr
```

## Step 3: Symlinking

**zsh**
Zsh configuration files, simply symlink as follows
```
ln -s $HOME/Documents/GitHub/Dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/Documents/GitHub/Dotfiles/.zshenv $HOME/.zshenv
```

**.spacemacs**

- Spacemacs configuration file, simply symlink as follows
```
ln -s $HOME/Documents/GitHub/Dotfiles/.spacemacs $HOME/.spacemacs
```
- Then add the snippets
```
rm -r $HOME/.emacs.d/private/snippets
ln -s $HOME/Documents/Github/Dotfiles/snippets $HOME/.emacs.d/private/snippets
```
- Then start emacs so that all of the dependencies can be downloaded and installed.
  - There might be an error about an 'tern' dependency; this is a JavaScript dev tool and can be install with the following npm command (source)[https://macbookandheels.com/emacs/2019/01/18/tern-binary-not-found/].
```
npm install --global tern
```

**.tmux.conf**
Tmux configure file, simply symlink as follows
```
ln -s $HOME/Documents/GitHub/Dotfiles/.tmux.conf $HOME/.tmux.conf
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


## Step 4: Mac specific stuff
- Follow the instructions in the "macSetup.org" file

## Step 5: Using the sounds files
Here is an example
``` sh
echo 'done
[ERROR]' | awk '{print $0}; $0 ~ "done" {system("afplay $SOUNDS/done/1.mp3 &")}; $0 ~ "ERROR" {system("afplay $SOUNDS/error/1.mp3 &")}'
```
Sources of audio files
- [Zapsplat](zapsplat.com)
