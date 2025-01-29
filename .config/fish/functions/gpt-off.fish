function gpt-off
  sudo ctrld stop && sudo systemctl stop ctrld.service && sudo systemctl disable ctrld.service
end

