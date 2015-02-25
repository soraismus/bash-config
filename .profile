# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

rsource () {
  [ -r "$1" ] && source "$1"
}

rsource "$HOME/.path_variable"

# if running bash
[ -n "$BASH_VERSION" ] && rsource "$HOME/.bashrc"
