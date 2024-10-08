source /usr/share/cachyos-fish-config/cachyos-config.fish
oh-my-posh init fish --config ~/.config/oh-my-posh/theme.omp.json | source

function fish_greeting
    set term (string match -r '.*kitty' $TERM)
    set l (string length "$term")
    if test "$l" -gt 0
        fastfetch --logo '/home/michiel/Pictures/2182585_d0a9d.png' --logo-padding-top 5
        return
    end
    fastfetch --logo-padding-top 2
end