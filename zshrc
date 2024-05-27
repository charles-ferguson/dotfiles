# Set up Prompt
setopt prompt_subst
precmd() {
  PROMPT="$("${HOME}/bin_prompt.sh")"
  PS1='$ '
}


export EDITOR="vim"
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
export FZF_BASE="/opt/homebrew/opt/fzf"
plugins=(aws fzf fzf-tab git kubectl)
source $ZSH/oh-my-zsh.sh

#PATH="/opt/clio/bin:${PATH}"
# Set up key bindings
set editing-mode vi
bindkey -v
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line
bindkey '^[^[[C' forward-word
bindkey '^[^[[D' backward-word

# Configure FZF and FZF integrations
source ~/fzf.d/fzf.zsh
source ~/fzf.d/git/functions.sh
source ~/fzf.d/git/key-binding.zsh

eval "$(dev _hook)"


export DOTFILE_REPO_PATH="${HOME}/repos/dotfiles/"
alias devundo="pushd ${DOTFILE_REPO_PATH}; git checkout -- config_files/docker_config.json; popd"
