function set_git_ruby_prompt {
  local branch
  branch=$(git branch --no-color 2> /dev/null | grep '*' | cut -c 3-)
  if [ "$branch" ]; then
    BGP_GIT_ROOT_DIRECTORY=$(git rev-parse --show-toplevel)

    project=`basename ${BGP_GIT_ROOT_DIRECTORY}`
    # ruby_interpreter=`rvm info ruby | grep " version" | cut -c 19- | sed -e 's/"//g'`
    # rvm_gemset=`rvm info environment | grep gemset | cut -c 19- | sed -e 's/"//g'`
    git_info=`git status --porcelain | cut -c -2`

    branch_col="\[\e[0;36m\]${branch}\[\e[0m\]"
    # git_info_col="\[\e[0;36m\]${git_info}\[\e[0m\]"
    project_col="\[\e[1;31m\]${project}\[\e[0m\]"
    # ruby_interpreter_col="\[\e[0;35m\]${ruby_interpreter}\[\e[0m\]"
    # rvm_gemset_col="\[\e[0;34m\]${rvm_gemset}\[\e[0m\]"

    # PS1="[${branch_col}:${ruby_interpreter_col}/${rvm_gemset_col}]\$ "
    # PS1="[${branch_col}:${ruby_interpreter_col}/${rvm_gemset_col}:\u@\h]\$ "
    PS1="${branch_col} \[\e[1;31m\]⎋\[\e[0m\] "
  else
    # PS1="[\u@\h:\W]\$ "
    PS1="\[\e[1;31m\]ಠ_ಠ\[\e[0m\] "
  fi
  # ス
  # ヽ(´ー｀)ノ
  # ʕ•̫͡•ʔ
  # ಠ_ಠ
  # 
  # ⌘
  # ⌥
  # ⇧
  # ⎋
}

BGP_ORIGINAL_PS1=$PS1
PROMPT_COMMAND=set_git_ruby_prompt
