export EDITOR=vim

_prompt_command() {
  ~/bin_prompt.sh

  PS1='$ '
}

PROMPT_COMMAND=_prompt_command
export PROMPT_COMMAND

export PATH="/usr/local/git/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/opt/openssl/bin"

# Go setup
export GOPATH="$HOME/.go/workspace/Go"
export PATH="$GOPATH/bin:$PATH"

# Ruby setup
export RBENV_SHIMS="$HOME/.rbenv/shims"
export PATH="$RBENV_SHIMS:$PATH"

#Node Env
export NODENV_SHIMS="$HOME/.nodenv/shims"
export PATH="$NODENV_SHIMS:$PATH"

# Python 3.7 executables
PYTHON_BIN_PATH="${HOME}/Library/Python/3.7/bin"
PATH="${PYTHON_BIN_PATH}:${PATH}"
export PATH

# Terragrunt Switch (tgswitch)
PATH=$PATH:/Users/charlesferugson/bin

# FZF Integration
if [[ "${SHELL}" =~ "bash" ]]; then
  # shellcheck source=/Users/charlesferguson/.fzf.bash
  [ -f ~/.fzf.bash ] && source ~/.fzf.bash
elif [[ "${SHELL}" =~ "zsh" ]]; then
  # shellcheck source=/Users/charlesferguson/.fzf.zsh
  [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fi

export FZF_COMPLETION_TRIGGER=',,'
# _fzf_setup_completion path ag git kubectl

source /Users/charlesferguson/.clio_profile
