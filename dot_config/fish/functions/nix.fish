function nix --wraps='quickemu --vm nixos-24.05-gnome.conf' --description 'alias nix quickemu --vm nixos-24.05-gnome.conf'
  quickemu --vm nixos-24.05-gnome.conf $argv
        
end
