function cm-all --wraps='chezmoi add'
    chezmoi add ~/.config/alacritty/ $argv
    chezmoi add ~/.config/hypr/ $argv
    chezmoi add ~/.config/oh-my-posh/ $argv
    chezmoi add ~/.config/user-scripts/ $argv
    chezmoi add ~/.config/rofi/ $argv
    chezmoi add ~/.config/waybar/ $argv
    chezmoi add ~/.config/swaylock $argv
end

