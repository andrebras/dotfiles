# Assuming the 'alias' directory is in the same directory as config.fish
set config_dir (string join "" (dirname (status --current-filename)) "/conf.d")

# Locale
set -x LANG "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"

# Editor
set -x EDITOR vim
set -x VISUAL vim
set -x PAGER less

# Environment variables
source $config_dir/env.fish
source $config_dir/profile.fish

# Set the list of directories that Fish shell searches for programs
set -gx PATH /usr/local/bin /usr/local/sbin $PATH

# Set the list of directories that cd searches.
set -gx CDPATH \
    /Users/andrebras/Lab \
    /Users/andrebras \
    /Volumes

if status is-interactive
    # Interactive session specific commands go here
    # (e.g., setting prompt, welcome message, alias etc.)
    load_alias "$config_dir/alias"
end

# Homebrew
eval (/opt/homebrew/bin/brew shellenv)

# Zoxide
zoxide init fish | source

# Hook direnv into Fish shell
eval (direnv hook fish)

# asdf
source /opt/homebrew/opt/asdf/libexec/asdf.fish
