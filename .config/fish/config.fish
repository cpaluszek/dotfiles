if status is-interactive
    theme_gruvbox light medium
    # Commands to run in interactive sessions can go here

    alias lg="lazygit"
    alias vim="nvim"

    export PATH="$PATH:/snap/bin:$HOME/.fzf/bin:$HOME/.local/bin"

    # Integrations
    zoxide init fish | source
    fzf --fish | source
end
