function cdsymlink
    set target (readlink -f $argv)
    cd (dirname $target)
end
