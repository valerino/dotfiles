# my dotfiles
uses _minpac_ vim8 plugin manager, zplug (assumes _zsh_ as the default shell), tpm plugin manager for tmux

* after cloning this repo, symlink to your home:
~~~
ln -s /path/to/this_repo/.zshrc ~/.zshrc
ln -s /path/to/this_repo/.vimrc ~/.vimrc 
ln -s /path/to/this_repo/.clang-format ~/.clang-format
ln -s /path/to/this_repo/.tmux.conf ~/.tmux.conf
~~~

* install the package managers:
~~~
git clone https://github.com/k-takata/minpac ~/.vim/pack/plugins/opt/minpac
git clone https://github.com/zplug/zplug ~/.zplug
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~~~

* use my customizations as base, they are loaded in the end of .zshrc according to the running OS
~~~
# symlink customizations and change them accordingly to suit your needs/os/env
ln -s /path/to/this_repo/.linux_customize_zshrc ~/.linux_customize_zshrc
ln -s /path/to/this_repo/.macos_customize_zshrc ~/.macos_customize_zshrc

# this includes configuration for developing AOSP on linux, zsh will spawn bash
ln -s /path/to/this_repo/.linux_customize_bashrc ~/.linux_customize_bashrc 
~~~

* accept zplug prompts to install plugins

* enter vim, issue _PackUpdate_ once to install the missing plugins

	* to update vim plugins, issue command _PackUpdate_ in vim once in a while...

* to update zplug, issue _zplug update_ once in a while....
	* if you get 'unknown error' during install/update, on Ubuntu you may need to install gawk: __sudo apt get install gawk__ (probably the same on MacOS, via brew)
* to install tmux plugin at first run: C-a C-I
	* tmux prefix is set to C-a (screen-style)

## macos
you may need to install gsed
~~~
brew -v install gnu-sed
~~~

## fonts (macos)
~~~
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
~~~

## iTerm2 (macos)
* install dracula theme from https://github.com/dracula/iterm

## Gnome-terminal (linux)
* sudo apt-get install zsh
* chsh -s /usr/bin/zsh
* install https://github.com/dracula/gnome-terminal
 
## mappings (macos)
* in _iTerm2_, map _Command-w_ to \\\<C-w> ('send text with Vim special chars').
	* This will remap Ctrl-w to Command-w to cycle windows in Vim.
* in _iTerm2_, map _Command-a_ to \\\<C-a> ('send text with Vim special chars').
	* This will remap Ctrl-a to Command-a in Tmux.
* in _iTerm2_, map _Command-p_ to \\\<C-p> ('send text with Vim special chars').
	* This will remap Ctrl-p to Command-p to activate CtrlP plugin in Vim 





