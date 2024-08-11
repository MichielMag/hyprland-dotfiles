function cm-all
    argparse h/help c/cd p/push -- $argv
    or return
 
    set present $PWD

    if set -ql _flag_push
        if not test -n "$argv[1]"
            echo "Missing parameter: Message. Please use the following format: cm-all [-h|--help] [-s|--cd] [-p|--push %message%]"
            return -1
        end
    end

    chezmoi add ~/.config/alacritty/
    chezmoi add ~/.config/hypr/
    chezmoi add ~/.config/oh-my-posh/
    chezmoi add ~/.config/user-scripts/
    chezmoi add ~/.config/rofi/
    chezmoi add ~/.config/waybar/
    #chezmoi add ~/.config/eww/
    chezmoi add ~/.config/swaylock
    chezmoi add ~/.config/swaync
    chezmoi add ~/.config/fish

    # If -h or --help is given, we print a little help text and return
    if set -ql _flag_help
        echo "cm-all [-h|--help] [-s|--cd] [-p|--push %message%]"
        return 0
    end

    if set -ql _flag_cd
        chezmoi cd
    end

    if set -ql _flag_push
        gitid
        chezmoi git add .
        chezmoi git -- commit -m \"$argv[1]\"
        chezmoi git push
    end
end

