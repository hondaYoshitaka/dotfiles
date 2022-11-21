# ================ Config ==================================

bindkey -e                                             # Use emacs movement bindings
bindkey "^[[1;3C" forward-word                         # Option Forward Arrow
bindkey "^[[1;3D" backward-word                        # Option Back Arrow
setopt globdots                                        # match files starting with .
export PATH=$HOME/.dotfiles/bin:$PATH                  # Adds my binaries
source ~/.config/base16-shell/scripts/base16-gruvbox-dark-medium.sh

# ================ Homebrew ================================

eval "$(starship init zsh)"                            # Cross-Shell Prompt
eval "$(zoxide init zsh)"                              # A smarter cd command

. /opt/homebrew/opt/asdf/libexec/asdf.sh               # Manage multiple runtime versions
source ~/.fzf.zsh                                      # Command-line fuzzy finder
source /opt/homebrew/share/antigen/antigen.zsh         # Plugin manager for zsh

# https://docs.brew.sh/Shell-Completion
fpath=(/usr/local/share/zsh/site-functions $fpath)
autoload -Uz compinit && compinit

# ================ Antigen =================================

export ADOTDIR=~/.antigen                              # Explict default value for Topgrade

antigen bundle zsh-users/zsh-autosuggestions           # Autosuggestions
antigen bundle gezalore/zsh-prioritize-cwd-history     # Prioritize history based on current dir
antigen bundle Aloxaf/fzf-tab                          # Fuzzy tab completion
antigen apply

bindkey '^[[Z' autosuggest-accept                      # shift-tab to accept autosuggestion
bindkey '\t' fzf-tab-complete                          # tab to complete

# ================ History =================================

export HISTFILE=~/.zsh_history                         # Set history file location
export HISTSIZE=10000                                  # More history in memory
export SAVEHIST=10000                                  # More history on disk
setopt INC_APPEND_HISTORY                              # Append history incrementally
setopt HIST_IGNORE_ALL_DUPS                            # Ignore all duplicates

# ================ Better Versions =========================

# alias git='hub'
alias cat='bat'
alias less='bat'
alias diff='delta'
alias find='fd'
alias top='htop'
alias ps='procs'
alias ls='exa'
alias grep='rg'
alias ping='prettyping --nolegend'
alias df='duf'
alias du='dust'

