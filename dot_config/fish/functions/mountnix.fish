function mountnix --wraps='sshfs -p 22220 michiel@localhost:/home/michiel /mnt/guest' --description 'alias mountnix sshfs -p 22220 michiel@localhost:/home/michiel /mnt/guest'
  sshfs -p 22220 michiel@localhost:/home/michiel /mnt/guest $argv
        
end
