# Set GPG_TTY variable to the current terminal
set -x GPG_TTY (tty)

# Add .local/bin to the beginning of the PATH
set -x PATH /Users/andrebras/.local/bin $PATH

# Add ~/.mix/escripts to the PATH
set -x PATH $HOME/.mix/escripts $PATH

# Set BAT_THEME variable for bat
set -x BAT_THEME ansi

# Disable Rails spring
set -x DISABLE_SPRING true

# Add libpq/bin to the PATH for PostgreSQL
set -x PATH /opt/homebrew/opt/libpq/bin $PATH

# Add mysql-client@5.7/bin to the PATH for MySQL client
set -x PATH /opt/homebrew/opt/mysql-client@5.7/bin $PATH

# Set LDFLAGS and CPPFLAGS for mysql-client@5.7
set -x LDFLAGS -L/opt/homebrew/opt/mysql-client@5.7/lib
set -x CPPFLAGS -I/opt/homebrew/opt/mysql-client@5.7/include
