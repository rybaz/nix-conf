function audioinfo
  set -l FILE $argv
  # bitrate and file type info
  command soxi $argv
  # get spectrogram and open
  command sox $argv -n spectrogram -o $argv.png
  command feh $argv.png &
end
