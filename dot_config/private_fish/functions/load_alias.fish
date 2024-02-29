function load_alias
    set alias_path $argv[1]

    if test -e $alias_path
        for file in (find $alias_path -type f)
            source $file
        end
    end
end
