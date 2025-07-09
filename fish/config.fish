if status is-interactive
    # Commands to run in interactive sessions can go here
    set TMUX_PID (pstree -s -p $fish_pid | grep tmux)
    if test -z "$TMUX_PID"
        tmux new-session -A -s main
        echo "Spawned from FISH"
    else
        echo "Spawned from TMUX"
    end
    
    fish_add_path -p /usr/local/vitasdk/bin
    fish_add_path -a ~/bin/nvim-linux64/bin ~/.local/bin:~/bin/mdcat-2.1.0-x86_64-unknown-linux-musl ~/.cargo/bin ~/bin
    fish_add_path -p ~/bin
    set TERMINFO $HOME/.terminfo
    
    set -gx TERM ghostty
    set -gx EDITOR nvim
    
    oh-my-posh init fish --config /home/lain/.cache/oh-my-posh/themes/hul10.omp.json | source
    
    ~/Projects/FaustaoSay/generator.py | ~/Projects/FaustaoSay/faustaosay.py
end
