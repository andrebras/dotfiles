# Assuming the 'alias' directory is in the same directory as config.fish
set config_dir (string join "" (dirname (status --current-filename)) "/conf.d")

# Editor
set -x EDITOR 'vim'
set -x VISUAL 'vim'
set -x PAGER 'less'

# Locale
# set -x LANG "en_US.UTF-8"
# set -x LC_ALL "en_US.UTF-8"

# Environment variables
source $config_dir/env.fish
source $config_dir/profile.fish

# asdf
source /opt/homebrew/opt/asdf/libexec/asdf.fish

# Set the list of directories that Fish shell searches for programs
set -U path /usr/local/bin /usr/local/sbin $path

if status is-interactive
    # Interactive session specific commands go here
    # (e.g., setting prompt, welcome message, alias etc.)
    load_alias "$config_dir/alias"
end

# Homebrew
eval (/opt/homebrew/bin/brew shellenv)

# Hook direnv into Fish shell
eval (direnv hook fish)

# Zoxide
zoxide init fish | source
