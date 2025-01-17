function git_status_all
    set original_dir (pwd)

    set color_clean (set_color green)
    set color_dirty (set_color red)
    set color_reset (set_color normal)
    set color_branch (set_color blue)
    set color_repo (set_color purple)

    set repo_paths (cat ~/repos.txt)
    for repo in $repo_paths
        cd $repo
        set branch_name (git rev-parse --abbrev-ref HEAD)
        printf "$color_repo$repo$color_reset on \ue0a0 $color_branch$branch_name$color_reset is "
 
        set gstatus (git status --porcelain)
        if test -z "$gstatus"
            echo -n $color_clean"Clean"$color_reset
            echo
        else
            echo -n $color_dirty"Dirty"$color_reset
            echo
            git status --porcelain | sed 's/^/\t/'
        end
        echo
    end

    cd $original_dir
end
