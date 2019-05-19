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

* use my customizations as base, they are loaded (if found) in the end of .zshrc according to the running OS
~~~
# you may use customizations and change them accordingly to suit your needs/os/env
cp /path/to/this_repo/.linux_customize_zshrc.template ~/.linux_customize_zshrc
cp /path/to/this_repo/.macos_customize_zshrc.template ~/.macos_customize_zshrc

# this includes configuration for developing AOSP on linux, zsh will spawn bash
cp /path/to/this_repo/.linux_customize_bashrc.template ~/.linux_customize_bashrc 
~~~

* accept zplug prompts to install plugins

* enter vim, issue _PackUpdate_ once to install the missing plugins

	* to update vim plugins, issue command _PackUpdate_ in vim once in a while...

* to update zplug, issue _zplug update_ once in a while....
	* if you get 'unknown error' during install/update, on Ubuntu you may need to install gawk: __sudo apt get install gawk__ (probably the same on MacOS, via brew)
* to install tmux plugin at first run: C-a C-I
	* tmux prefix is set to C-a (screen-style)

## linux
~~~
# install needed packages and set zsh as default shell
sudo apt-get install zsh xclip xsel gsed
chsh -s /usr/bin/zsh
~~~

### Gnome-terminal
* install https://github.com/dracula/gnome-terminal

### Konsole
* https://draculatheme.com/konsole

### Fonts
* install a nerdfont as specified here : https://github.com/ryanoasis/nerd-fonts#option-1-download-and-install-manually (usually just unzip in your __~/.local/share/fonts__)
* rebuild font cache with __sudo fc-cache -f -v__
* set it into your terminal

## macos
you may need to install *gsed*
~~~
brew -v install gnu-sed
~~~

### fonts
~~~
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
~~~

### iTerm2
* install dracula theme from https://github.com/dracula/iterm

* map _Command-w_ to \\\<C-w> ('send text with Vim special chars').
	* This will remap Ctrl-w to Command-w to cycle windows in Vim.
* map _Command-a_ to \\\<C-a> ('send text with Vim special chars').
	* This will remap Ctrl-a to Command-a in Tmux.
* map _Command-p_ to \\\<C-p> ('send text with Vim special chars').
	* This will remap Ctrl-p to Command-p to activate CtrlP plugin in Vim 
* _add others ....._




