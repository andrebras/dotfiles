set -x GPG_TTY (tty)

# add .local/bin to path
set -x PATH /Users/andrebras/.local/bin $PATH

# add openjdk to local path
# set -x PATH /opt/homebrew/opt/openjdk/bin $PATH

# invoke escripts by name
set -x PATH $HOME/.mix/escripts $PATH

# used as preview for fzf
set -x BAT_THEME ansi

# disable rails spring
set -x DISABLE_SPRING true

# postgresql through libpq
set -x PATH /opt/homebrew/opt/libpq/bin $PATH

# mysql client
# set -x PATH /opt/homebrew/opt/mysql-client@5.7/bin $PATH
# set -x LDFLAGS -L/opt/homebrew/opt/mysql-client@5.7/lib
# set -x CPPFLAGS -I/opt/homebrew/opt/mysql-client@5.7/include

# publitas
set -x PREVIEW_EMAIL true
