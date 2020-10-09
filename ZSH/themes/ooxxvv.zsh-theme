#############################################################################
# Use different way to show directory and git repository
#############################################################################
ZSH_THEME_GIT_PROMPT_PREFIX="► "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$FG[214]%}↑"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$FG[214]%}↓"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[214]%}|!"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[076]%}|."
ZSH_THEME_GIT_PROMPT_REMOTE_EXISTS="%{$FG[076]%}:|"
ZSH_THEME_GIT_PROMPT_REMOTE_MISSING="%{$FG[076]%}?|"

local shell_symbol="%(?:%{$FG[076]%}→ :%{$FG[214]%}→ )"
PROMPT='$shell_symbol$(pwd_or_git)$shell_symbol%{$reset_color%}'

function pwd_or_git(){
  # Show only path if not a git repository
  local git_info=$(git_prompt_info)
  if [ "$git_info" = "" ]; then
    echo "%{$FG[252]%}%~ "
    return
  fi

  # Path that relative to top-level
  local repo_dir=${$(git rev-parse --show-prefix)%/}
  if [ "$repo_dir" = "" ]; then
    git_info="%{$FG[074]%}%c $git_info"
  else
    local repo_root=$(basename $(git rev-parse --show-toplevel))
    git_info="%{$FG[074]%}$repo_root/$repo_dir $git_info"
  fi

  # Only git_info if current branch is not exist on remote
  local git_remote=$(git_prompt_remote)
  if [ "$git_remote" = "$ZSH_THEME_GIT_PROMPT_REMOTE_MISSING" ]; then
    echo "$git_info$git_remote "
    return
  fi

  # Show git_info & commint ahead/behind between remote
  echo "$git_info$(git_prompt_behind)$(git_prompt_ahead)$git_remote "
}


