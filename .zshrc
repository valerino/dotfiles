# uses zplug
export ZPLUG_HOME=~/.zplug
source ~/.zplug/init.zsh

# zsh plugins, including some from oh-my-zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/history", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh, , if:"[[ $OSTYPE == *darwin* ]]"
zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "tarruda/zsh-autosuggestions", use:"zsh-autosuggestions.zsh"

# Can manage local plugins
# zplug "~/.zsh", from:local

# Load theme file
zplug 'dracula/zsh', as:theme

# stuff from oh-my-zsh
zplug "lib/key-bindings", from:oh-my-zsh
zplug "lib/directories", from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

##########################################################
# user customization
########################################################## 

# terminal
export LANG=en_US.UTF-8

# vim as default editor
export VISUAL=vim
export EDITOR=$VISUAL

# path
export PATH=~/bin:$PATH

# additional customization
case `uname` in
  Darwin)
 	# my usual macos customizations
	source ~/.macos_customize_zshrc
  ;;
  Linux)
	# my usual linux customizations
 	source ~/.linux_customize_zshrc

  ;;
esac

