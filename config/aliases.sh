alias utf8_fail="find . -type f | xargs -I {} bash -c \"iconv -f utf-8 -t utf-16 {} &>/dev/null || echo {}\""
alias b="bundle exec"

alias gis="git status"
alias ga="git add"
alias gcm="git commit -m"
alias gacm="git add . && git commit -m"
alias unstage="git reset HEAD"
alias gmom="git merge origin/master"
alias gpo="git push origin"
alias gp="git push"
alias gph="git push heroku master"

alias gup="git smart-pull"
alias gl="git smart-log"
alias gm="git smart-merge"

alias pryr="pry -r ./config/environment -r rails/console/app -r rails/console/helpers"
