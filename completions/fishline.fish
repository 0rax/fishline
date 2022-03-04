complete -c fishline --no-files
complete -c fishline -a "(fishline -x)"
complete -c fishline -x -n __fish_use_subcommand -s s -d "Set the last command status exit code"
complete -c fishline    -n __fish_use_subcommand -s l -d "Generate a fish_prompt"
complete -c fishline    -n __fish_use_subcommand -s r -d "Generate a fish_right_prompt"
complete -c fishline -x -n __fish_use_subcommand -s x -d "Print the list of availlable segment and exit"
complete -c fishline -x -n __fish_use_subcommand -s v -d "Print the software version and exit"
complete -c fishline -x -n __fish_use_subcommand -s h -d "Print help message"
