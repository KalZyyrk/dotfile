plugins=(macos)

export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin":$PATH

export PATH=$PATH:/Users/ulysse.hischke/bin

#The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ulysse.hischke/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ulysse.hischke/Downloads/google-cloud-sdk/path.zsh.inc'; fi

export obd_base="/Users/ulysse.hischke/Library/Mobile Documents/iCloud~md~obsidian/Documents/My Vault/"

# Loop through all files in the ~/.config/fabric/patterns directory
for pattern_file in ~/.config/fabric/patterns/*; do
    # Get the base name of the file (i.e., remove the directory path)
    pattern_name=$(basename "$pattern_file")

    # Unalias any existing alias with the same name
    unalias "$pattern_name" 2>/dev/null

    # Define a function dynamically for each pattern
    eval "
    $pattern_name() {
        local title=\$1
        local date_stamp=\$(date +'%Y-%m-%d')
        local output_path=\"\$obd_base/\${date_stamp}-\${title}.md\"

        # Check if a title was provided
        if [ -n \"\$title\" ]; then
            # If a title is provided, use the output path
            fabric --pattern \"$pattern_name\" -o \"\$output_path\"
        else
            # If no title is provided, use --stream
            fabric --pattern \"$pattern_name\" --stream
        fi
    }
    "
done

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

# Added by Windsurf
export PATH="/Users/ulysse.hischke/.codeium/windsurf/bin:$PATH"

# >>>> Vagrant command completion (start)
fpath=(/opt/vagrant/embedded/gems/gems/vagrant-2.4.9/contrib/zsh $fpath)
compinit
# <<<<  Vagrant command completion (end)
