function mountnix --wraps='sudo guestmount -a /var/lib/libvirt/images/nixos-24.05.qcow2 -m /dev/sda1 -w -o allow_other -o uid=1000 -o gid=1000 /mnt/guest/' --description 'alias mountnix sudo guestmount -a /var/lib/libvirt/images/nixos-24.05.qcow2 -m /dev/sda1 -w -o allow_other -o uid=1000 -o gid=1000 /mnt/guest/'
  sudo guestmount -a /var/lib/libvirt/images/nixos-24.05.qcow2 -m /dev/sda1 -w -o allow_other -o uid=1000 -o gid=1000 /mnt/guest/ $argv
        
end
