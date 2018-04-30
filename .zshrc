# uses zplug
export ZPLUG_HOME=~/.zplug
source ~/.zplug/init.zsh

# zsh plugins, including some from oh-my-zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/history", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh
zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "tarruda/zsh-autosuggestions", use:"zsh-autosuggestions.zsh"

# Can manage local plugins
# zplug "~/.zsh", from:local

# Load theme file
zplug 'dracula/zsh', as:theme

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

# aliases
alias sed=gsed # uses gnu sed
alias ls='ls -G'
alias readelf="~/android-ndk/toolchains/aarch64-linux-android-4.9/prebuilt/darwin-x86_64/bin/aarch64-linux-android-readelf"

# path
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH
export PATH=:~/Library/Python/3.6/bin:~/Library/Python/3.6/lib/python/site-packages:$PATH
export PATH=:~/go/bin:$PATH

# android
ANDROID_BUILD_TOOLS_VER=27.0.3
export PATH=~/android-sdk/platform-tools:$PATH
export PATH=~/android-sdk/build-tools/$ANDROID_BUILD_TOOLS_VER:$PATH
export ANDROID_SDK=~/android-sdk
export ANDROID_NDK=~/android-ndk
export NDK_PATH=~/android-ndk

