set -gx PATH ~/.bin $PATH;
set -gx EDITOR nvim
set -gx VISUAL $EDITOR

alias kc="kubectl"
alias e="exa --group-directories-first"
alias ls="exa --group-directories-first"
alias ll="exa -l --group-directories-first"
alias k="kubectl"
alias fzfb="bat (fzf)"
alias config_fish="nvim ~/.config/fish"
alias config_espanso="nvim ~/Library/Preferences/espanso"
alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

set -U FZF_LEGACY_KEYBINDINGS 0
set -g fish_greeting

# jenv - Java environment manager
# https://github.com/jenv/jenv
# TODO: integrate jenv with fish shell

# iTerm integration
source ~/.iterm2_shell_integration.(basename $SHELL)

set -g fish_user_paths "/usr/local/opt/avr-gcc@8/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/arm-gcc-bin@8/bin" $fish_user_paths

# nvm
if type -q nvm
    nvm use 16 >/dev/null
end
