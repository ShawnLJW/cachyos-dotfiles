source /usr/share/cachyos-fish-config/cachyos-config.fish

function fish_greeting
    :
end

alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

zoxide init fish --cmd cd | source
fzf --fish | source
