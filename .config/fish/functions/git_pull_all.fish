function git_pull_all
    set original_dir (pwd)

    set repo_paths (cat ~/repos.txt)
    for repo in $repo_paths
        set expanded_path (string replace '~' (echo $HOME) $repo)
        echo -n "$expanded_path: "
        cd $expanded_path
        git pull
        echo
    end

    cd $original_dir
end
