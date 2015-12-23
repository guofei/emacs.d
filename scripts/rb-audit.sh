#!/bin/sh

export PATH="/usr/local/bin/:$PATH"
eval "$(rbenv init - zsh)"

# Syntax check
ruby -w -c $1
rc_exitcode=$?

exit $rc_exitcode
