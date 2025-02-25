function git_status_all
    set original_dir (pwd)

    set color_clean (set_color green)
    set color_dirty (set_color red)
    set color_reset (set_color normal)
    set color_branch (set_color blue)
    set color_repo (set_color purple)
    set color_ahead (set_color yellow)
    set color_behind (set_color cyan)

    set repo_paths (cat ~/repos.txt)
    for repo in $repo_paths
        set expanded_path (string replace '~' (echo $HOME) $repo)
        cd $expanded_path

        set branch_name (git rev-parse --abbrev-ref HEAD)
        printf "$color_repo$repo$color_reset on \ue0a0 $color_branch$branch_name$color_reset: "
 
        set gstatus (git status --porcelain)
        if test -z "$gstatus"
            echo -n $color_clean""$color_reset
            # echo
        else
            echo -n $color_dirty""$color_reset
            # echo
            # git status --porcelain | sed 's/^/\t/'
        end


        # Check if the branch is ahead or behind
        set gstatus_sb (git status -sb)

        if echo $gstatus_sb | grep -q 'ahead'
            set ahead_count (string match -r 'ahead [0-9]+' $gstatus_sb | string split ' ')[2]
            echo -n $color_ahead"   "$ahead_count$color_reset
        end

        if echo $gstatus_sb | grep -q 'behind'
            set behind_count (string match -r 'behind [0-9]+' $gstatus_sb | string split ' ')[2]
            echo -n $color_behind "   "$behind_count$color_reset
        end

        if test -n "$gstatus"
            echo
            git status --porcelain | sed 's/^/\t/'
        end

        echo
    end


    cd $original_dir
end
