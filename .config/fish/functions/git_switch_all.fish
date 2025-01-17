function git_switch_all
    set color_error (set_color red)
    set color_switch (set_color green)
    set color_reset (set_color normal)

    if test (count $argv) -eq 0
        echo $color_error"Error: you must provide a branch name!"$color_reset
        return 1
    end

    set create_new_branch (test $argv[1] = '-b')

    if test $argv[1] = '-b'
        set branch_name $argv[2]
    else
        set branch_name $argv[1]
    end

    set original_dir (pwd)

    set repo_paths (cat ~/repos.txt)
    for repo in $repo_paths
        echo -n "$repo: "
        cd $repo

        if test $argv[1] = '-b'
            echo $color_switch"Creating and switching to branch '$branch_name'" $color_reset

            if git switch -c $branch_name; test $status -eq 0
                echo -n $color_switch "Success!" $color_reset
            else
                echo -n $color_error "Failed!" $color_reset
            end
        else
            echo $color_switch"Switching to branch '$branch_name'..."$color_reset

            if git switch $branch_name; test $status -eq 0
                echo -n $color_switch "Success!" $color_reset
            else
                echo -n $color_error "Failed!" $color_reset
            end
        end

        echo
    end

    cd $original_dir
end
