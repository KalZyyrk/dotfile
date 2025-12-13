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

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export PATH=~/apache-maven-3.9.9/bin:$PATH

# Load Angular CLI autocompletion.
source <(ng completion script)
