function linux-since-when --argument-names commit
    echo "Commit: "
    git log --oneline -1 $commit
    git tag --sort=creatordate --contains $commit | grep "^v" | head -n5
end

