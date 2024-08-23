function umountnix --wraps='sudo guestunmount /mnt/guest' --description 'alias umountnix sudo guestunmount /mnt/guest'
  sudo guestunmount /mnt/guest $argv
        
end
