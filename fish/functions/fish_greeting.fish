function fish_prompt
    set -l last_status $status
    set -l cwd (prompt_pwd)
    # TODO: find a better solution to set the correct white color

	# add ssh info if connected to a disttant client
	if test -n "$SSH_CLIENT"
		set_color --bold black -b green
		set -l ip (string split ' ' $SSH_CLIENT)
		echo -n " SSH ($ip[1]) "
		set_color normal
	end 

    # display last status info
    if not test $last_status -eq 0
        set_color --bold black -b red
        echo -n ' ! '
        set_color normal
    end

    # Display current path
    set_color black -b cyan
    echo -n " $cwd "

    # Show git branch and dirty state
    set -l git_branch (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
    set -l git_dirty (command git status -s --ignore-submodules=dirty 2> /dev/null)
	set -l git_commit (command git rev-parse --short HEAD 2> /dev/null)

	if test -n "$git_dirty"
		set_color --bold black -b yellow
	else
		set_color --bold black -b green
	end

	if test -n "$git_branch"
		echo -n " $git_branch "
	else if test -n "$git_commit"
		echo -n " $git_commit "
	end

    # Add a space
    set_color normal
    echo -n ' '
end

function fish_right_prompt
    date +"%H:%M"
end
