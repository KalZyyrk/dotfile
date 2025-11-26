# Function

fz(){cd "$(fd -t d | fzf)"}

if command -v explorer.exe >/dev/null; then
  function explorer(){
    p="${1:=.}"
    wp="$(wslpath -w $p)"
    explorer.exe "$wp"
  } 
fi

# Gitlab
#compdef gitlab-ci-local
###-begin-gitlab-ci-local-completions-###
#
# yargs command completion script
#
# Installation: /home/linuxbrew/.linuxbrew/bin/gitlab-ci-local completion >> ~/.zshrc
#   or /home/linuxbrew/.linuxbrew/bin/gitlab-ci-local completion >> ~/.zprofile on OSX.
#
_gitlab-ci-local_yargs_completions()
{
  local reply
  local si=$IFS
  IFS=$'
' reply=($(COMP_CWORD="$((CURRENT-1))" COMP_LINE="$BUFFER" COMP_POINT="$CURSOR" /home/linuxbrew/.linuxbrew/bin/gitlab-ci-local --get-yargs-completions "${words[@]}"))
  IFS=$si
  _describe 'values' reply
}
compdef _gitlab-ci-local_yargs_completions gitlab-ci-local
###-end-gitlab-ci-local-completions-###

