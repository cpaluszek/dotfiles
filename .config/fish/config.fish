if status is-interactive
    abbr -a lg lazygit
    abbr -a vim nvim

    abbr -a gcl git clone
    abbr -a gst git status

    abbr -a cdl cdsymlink

    set fish_greeting   # Disable greeting

    export PATH="$PATH:/snap/bin:$HOME/.fzf/bin:$HOME/.local/bin"
    export PATH="$PATH:/usr/local/go/bin:$HOME/go/bin"

    # Integrations
    zoxide init fish | source
    fzf --fish | source
    starship init fish | source
end

