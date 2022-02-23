# Set up Prompt
precmd() {
  ~/bin_prompt.sh
  PS1='$ '
}

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

# Configure gh autocomplete
source 
