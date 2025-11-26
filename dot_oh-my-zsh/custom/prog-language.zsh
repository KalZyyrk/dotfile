# Program Language

# Node | JavaScript

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Go

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Google Cloud Plateform
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/ulysse/google-cloud-sdk/path.zsh.inc' ]; then . '/home/ulysse/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for cloud.
if [ -f '/home/ulysse/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/ulysse/google-cloud-sdk/completion.zsh.inc'; fi

