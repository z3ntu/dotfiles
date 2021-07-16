function croot -d "Navigate to the top of the Android tree."
    set current_dir "$PWD"
    while test "$PWD" != "/"
        if test -d .repo
            return
        end
        cd ..
    end
    echo "Nothing found..."
    cd "$current_dir"
end
