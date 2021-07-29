prompt_setup_pygmalion(){
  ZSH_THEME_GIT_PROMPT_PREFIX="  %{$fg[yellow]%}(%{$fg[yellow]%}"
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%})%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_DIRTY=""
  ZSH_THEME_GIT_PROMPT_CLEAN=""

  base_prompt='%{$fg[blue]%}%n%{$reset_color%} %{$fg[cyan]%}@%{$reset_color%} %{$fg[blue]%}%m%{$reset_color%} %{$fg[cyan]%}↦%{$reset_color%}  %{$fg[blue]%}%1~%{$reset_color%}'
  post_prompt='%{$fg[green]%}$%{$reset_color%} '

  base_prompt_nocolor=$(echo "$base_prompt" | perl -pe "s/%\{[^}]+\}//g")
  post_prompt_nocolor=$(echo "$post_prompt" | perl -pe "s/%\{[^}]+\}//g")

  autoload -U add-zsh-hook
  add-zsh-hook precmd prompt_pygmalion_precmd
} 

prompt_pygmalion_precmd(){
  local gitinfo=$(git_prompt_info)
  local gitinfo_nocolor=$(echo "$gitinfo" | perl -pe "s/%\{[^}]+\}//g")
  local exp_nocolor="$(print -P \"$base_prompt_nocolor$gitinfo_nocolor$post_prompt_nocolor\")"
  local prompt_length=${#exp_nocolor}

  PROMPT="${base_prompt}${gitinfo}
${post_prompt}"
}

prompt_setup_pygmalion
