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


## Sept 4: Mac specific stuff
- Follow the instructions in the "macSetup.org" file

