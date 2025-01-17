function git_pull_all
    set original_dir (pwd)

    set repo_paths (cat ~/repos.txt)
    for repo in $repo_paths
        echo -n "$repo: "
        cd $repo
        git pull
        echo
    end

    cd $original_dir
end
