export EDITOR=vim

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

# clio artifactory credentials for bundler
export ARTIFACTORY_API_KEY="$(ruby -rcgi -e 'puts CGI::escape("PASSWORD")')"
export ARTIFACTORY_USERNAME="$(ruby -rcgi -e 'puts CGI::escape("charles.ferguson@clio.com")')"
export BUNDLE_CLIO__JFROG_IO="$ARTIFACTORY_USERNAME:$ARTIFACTORY_API_KEY"

# Add git-jump to path
export PATH="$PATH:$HOME/repos/git/contrib/git-jump"


# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
