# Git Log Formats
set git_log_oneline_format '%C(green)%h%C(reset) %C(cyan bold)(%ar by %an) %C(reset)%C(reset)%s %C(bold)%d%C(reset)'
set git_log_brief_format '%C(green)%h%C(reset) %s%C(red)%d%C(reset)%n'

# Git
alias g 'git'

# List last 15 used branches
alias gb "git for-each-ref --count=15 --sort=-committerdate refs/heads/ --format='%(refname:short)'"

# Checkout
alias gco 'git checkout'

# Log
alias glg "git log --color=always --topo-order --all --graph --pretty=format:'$git_log_brief_format'"
alias glo "git log --max-count=25 --color=always --pretty=format:'$git_log_oneline_format'"

# Working Copy
alias gss 'git status --short'
alias gws 'git status'

# Remove the alias 'gs' if it exists
functions -e gs
