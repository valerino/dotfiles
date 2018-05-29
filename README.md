# my dotfiles
uses _minpac_ vim8 plugin manager and zplug (assumes _zsh_ as the default shell)

* after cloning this repo, symlink to your home:
~~~
ln -s /path/to/this_repo/.zshrc ~/.zshrc
ln -s /path/to/this_repo/.vimrc ~/.vimrc 
ln -s /path/to/this_repo/.clang-format ~/.clang-format
ln -s /path/to/this_repo/.tmux.conf ~/.tmux.conf
~~~

* install the package managers:
~~~
mkdir -p ~/.vim/pack/plugins/opt
cd ~/.vim/pack/plugins/opt
git clone https://github.com/k-takata/minpac
git clone https://github.com/zplug/zplug ~/.zplug
~~~

* use my customizations as base, they are loaded in the end of .zshrc according to the running OS
~~~
# symlink customizations and change them accordingly to suit your needs/os/env
ln -s /path/to/this_repo/.linux_customize_zshrc ~/.linux_customize_zshrc
ln -s /path/to/this_repo/.macos_customize_zshrc ~/.macos_customize_zshrc

# this is only for developing AOSP on linux, zsh will spawn bash
ln -s /path/to/this_repo/.linux_customize_bashrc ~/.linux_customize_bashrc 
~~~

* accept zplug prompts to install plugins

* enter vim, issue _PackUpdate_ once to install the missing plugins

* to update vim plugins, issue command _PackUpdate_ in vim once in a while...

* to update zplug, issue _zplug update_ once in a while....

## fonts (macos)
~~~
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
~~~

## iTerm2 (macos)
* install dracula theme from https://github.com/dracula/iterm

## Gnome-terminal (ubuntu)
* sudo apt-get install zsh
* chsh -s `which zsh`
* install https://github.com/dracula/gnome-terminal
 
## mappings (macos)
### use app as https://manytricks.com/keycodes to get the right code
* in _iTerm2_, map _Command-W_ to 0x17 (_ctrl-w_) to switch vim windows


