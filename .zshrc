#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

for config_file ($HOME/.yadr/zsh/*.zsh) source $config_file

export TERM=xterm-256color

#Android Cordova development
#http://stackoverflow.com/questions/20323787/cordova-platform-add-android-not-working-while-listing-android-targets/21142421#21142421
export ANDROID_HOME="$HOME/android-sdk-linux"
export ANDROID_TOOLS="$HOME/android-sdk-linux/tools"
export ANDROID_PLATFORM_TOOLS="$HOME/android-sdk-linux/platform-tools"
export LINUXBREW="$HOME/.linuxbrew/bin"
export LOCALBIN="$HOME/bin"
#export PATH=$PATH:~/android-sdk-linux/tools:~/android-sdk-linux/platform-tools
PATH=$PATH:$ANDROID_HOME:$ANDROID_TOOLS:$ANDROID_PLATFORM_TOOLS:$LINUXBREW:$LOCALBIN

export ANT_HOME="$HOME/ant"
export PATH="$PATH:$ANT_HOME/bin"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

source ~/dotfiles/z.sh
