function fish_prompt
    set -l last_status $status
    set -l cwd (prompt_pwd)

    # display last status info
    if not test $last_status -eq 0
        set_color red -o
        echo -n "($last_status) "
        set_color normal
    end

    # Display current user 
    echo -n "["
    set_color green -o
    echo -n "$USER"
    set_color normal -o
    echo -n "@"
    set_color blue -o
    echo -n "$(uname -n)"
    set_color normal
    echo -n "]"

    # Display current path
    set_color -o cyan
    echo -n ":$cwd"
    set_color normal

    if git status 2> /dev/null 1> /dev/null
        # Show git branch and dirty state
        set -l git_branch (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
        set -l git_dirty (command git status -s --ignore-submodules=dirty 2> /dev/null)
        set -l git_commit (command git rev-parse --short HEAD 2> /dev/null)

        if test -n "$git_dirty"
            set_color --bold yellow
        else
            set_color --bold green
        end

        echo -n " ( "
        if test -n "$git_branch"
            echo -n "$git_branch"
        else if test -n "$git_commit"
            echo -n "$git_commit"
        end
        echo -n ")"
    end

    # Add a space
    set_color normal
    echo -n '$ '
end

function fish_right_prompt
    date +"%H:%M"
end
