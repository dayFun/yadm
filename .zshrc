
export PROJECT_PATHS="$HOME/src"

# load zgen
source "${HOME}/.zgen/zgen/zgen.zsh"
source "${HOME}/.envrc"

alias ivy='ant -f mfkr-build/installIvy.xml -Dcredentials.location=/home/dev1'
alias ivyc='ant -f mfkr-build/installIvy.xml -Dcredentials.location=/home/dev1 clean.ivy'

# Base16 Shell
BASE16_SHELL="$HOME/.bash/colors/base16-randy.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/adb
    zgen oh-my-zsh plugins/colored-man-pages
    zgen oh-my-zsh plugins/command-not-found
    zgen oh-my-zsh plugins/fasd
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/gradle
    zgen oh-my-zsh plugins/pip
    zgen oh-my-zsh plugins/pj
    zgen oh-my-zsh plugins/rake
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/thefuck
    zgen load chrissicool/zsh-256color
    zgen load djui/alias-tips
    zgen load zsh-users/zsh-history-substring-search
    zgen load zsh-users/zsh-syntax-highlighting

    # completions
    zgen load RobSis/zsh-completion-generator
    zgen load zsh-users/zsh-completions src

    # theme
    zgen load caiogondim/bullet-train-oh-my-zsh-theme bullet-train

    # colors
    zgen load $HOME/.zsh/colors/base16-randy.dark.sh

    # save all to init script
    zgen save
fi
