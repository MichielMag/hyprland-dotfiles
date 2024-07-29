function mp4tofig --wraps='ffmpeg' --description 'alias mp4tofig=ffmpeg -i'
    ffmpeg -i $argv[1] $argv[2]
end
