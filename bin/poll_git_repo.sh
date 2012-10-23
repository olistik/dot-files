#!/bin/bash

while true; do
  echo "Checking git repository.."
  date -u
  git_status=`git pull`
  if [[ $git_status != *up-to-date* ]]; then
    growlnotify -m "Repository updated" -s
  else
    echo "no updates"
  fi
  sleep 30
done
