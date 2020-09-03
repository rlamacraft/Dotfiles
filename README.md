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


## Step 3: Symlinking

**.zshrc**
Zsh configuration file, simply symlink as follows
```
ln -s $HOME/Documents/GitHub/Dotfiles/.zshrc $HOME/.zshrc
```

**.spacemacs**
Spacemacs configuration file, simply symlink as follows
```
ln -s $HOME/Documents/GitHub/Dotfiles/.spacemacs $HOME/.spacemacs
```

**.tmux.conf**
Tmux configure file, simply symlink as follows
```
ln -s $HOME/Documents/GitHub/Dotfiles/.tmux.conf $HOME/.tmux.conf
```
Then add `tmux` under Terminal > Settings > Profiles > Defaults > Shell > Startup > Run command


## Sept 4: Mac specific stuff
- Follow the instructions in the "macSetup.org" file

