if status is-interactive
    # theme_gruvbox light medium
    # fish_config theme save "Catppuccin Macchiato"
    abbr -a lg lazygit
    abbr -a vim nvim

    abbr -a gcl git clone
    abbr -a gst git status
    # Custom functions
    abbr -a gsta git_status_all
    abbr -a gpa git_pull_all
    abbr -a gsa git_switch_all

    abbr -a cdl cdsymlink

    set fish_greeting   # Disable greeting

    switch (uname)
        case Darwin
            export PATH="$PATH:/opt/homebrew/bin"
        case Linux
            export PATH="$PATH:/snap/bin:$HOME/.fzf/bin:$HOME/.local/bin"
            export PATH="$PATH:/usr/local/go/bin"
    end

    # Integrations
    zoxide init fish | source
    fzf --fish | source
    starship init fish | source
    source "$HOME/.cargo/env.fish"
end

