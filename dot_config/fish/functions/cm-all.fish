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

    set list (cat ~/.workspace/config.code-workspace | jq ".folders | .[] | .path")
    for i in $list
        set trimmed (string trim -c \" "$i")
        echo "Checking $trimmed"
        chezmoi add $trimmed
    end


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

