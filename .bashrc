# ~/.bashrc: Executed for non-login shells.

# If not running interactively, don't do anything.
[ -z "$PS1" ] && return

# Make `less` more friendly for non-text input files.
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Source a provided file if it exists and is readable.
rsource () {
  [[ -f "$1" && -r "$1" ]] && source "$1"
}

bash_config_files="$HOME/.bash/*"
completion_files="$HOME/.bash/completion/*"

nvm_source="$HOME/.nvm/nvm.sh"
nvm_completion="$HOME/.nvm/bash_completion"
nvm_files="$nvm_source $nvm_completion"

rvm_source="$HOME/.rvm/scripts/rvm"

source_files="$bash_config_files $completion_files $nvm_files $rvm_source"

# `rsource` each bash-config and completion file as well as the 'nvm' files.
for file in $source_files; do rsource "$file"; done

unset bash_config_files completion_files file nvm_completion nvm_files nvm_source source_files

# If the `shopt -o` 'posix' feature is turned off,
# `rsource` the primary bash-completion file.
! shopt -oq posix && rsource /etc/bash_completion

# Go to the last entered directory.
[ -r "$HOME/.lastdir" ] && cd "$( cat "$HOME/.lastdir" )"
