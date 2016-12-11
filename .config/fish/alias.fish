## package ##

abbr pacin 'sudo pacman -S'
abbr pacup 'sudo pacman -Syu'
abbr pacq 'pacman -Q'
abbr pacs 'pacman -Ss'

## systemd ##

abbr cn 'sudo networkctl'
abbr cj 'journalctl'
abbr cs 'sudo systemctl'
abbr css 'sudo systemctl status'
abbr csr 'sudo systemctl restart'
abbr cse 'sudo systemctl enable'

abbr startm 'sudo systemctl start lightdm'

## git ##

abbr gs 'git status'
abbr ga 'git add'
abbr gc 'git commit -a --allow-empty-message -m ""'
abbr gu 'git pull'
abbr gp 'git push'

## docker ##

abbr dps    'docker ps'
abbr dpsa   'docker ps -a'
abbr dstop  'docker stop -t 0 (docker ps -q)'
abbr dclean 'docker stop -t 0 (docker ps -q); docker rm -f (docker ps -a -q); docker rmi -f (docker images --filter dangling=true -q)'
abbr dshell 'docker exec -ti (dc-last) sh'

function di-last
  docker images -q | head -n 1
end

function dc-last
  docker ps -q | head -n 1
end

## vagrant ##

abbr vclean 'vagrant destroy -f'

## other ##

alias dotgit 'git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

function renew
  sudo systemctl restart wpa_supplicant@wlp4s0
  sudo systemctl restart systemd-networkd
end
