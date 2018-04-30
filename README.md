# my dotfiles
uses _minpac_ vim8 plugin manager and zplug (assumes _zsh_ as the default shell)

* after cloning this repo, symlink to your home:
~~~
ln -s /path/to/this_repo/.zshrc ~/.zshrc
ln -s /path/to/this_repo/.vimrc ~/.vimrc 
ln -s /path/to/this_repo/.clang-format ~/.clang-format
~~~

* install the package managers:
~~~
mkdir -p ~/.vim/pack/plugins/opt
cd ~/.vim/pack/plugins/opt
git clone https://github.com/k-takata/minpac
git clone https://github.com/zplug/zplug ~/.zplug
~~~

* accept zplug prompts to install plugins

* to update vim plugins, issue command _PackUpdate_ in vim once in a while...

* to update zplug, issue _zplug update_ once in a while....

## other useful mappings (macos oriented)
### use app as https://manytricks.com/keycodes to get the right code
* in _iTerm2_, map _Command-W_ to 0x17 (_ctrl-w_) to switch vim windows
