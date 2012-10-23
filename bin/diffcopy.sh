#!/bin/bash

# requires:
# git
# gist
# pbcopy

E_BADARGS=65

if [ $# -ne 1 ]
then
  echo "Usage: `basename $0` <commit-sha>"
  exit $E_BADARGS
fi
    
git show $1 | gist --type=diff --private | pbcopy
