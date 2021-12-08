function groot -d "Navigate to the top of the git repository."
    cd (git rev-parse --show-toplevel)
end
