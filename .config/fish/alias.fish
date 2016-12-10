abbr pacin 'sudo pacman -S'
abbr pacup 'sudo pacman -Syu'
abbr pacq 'pacman -Q'
abbr pacs 'pacman -Ss'

abbr cn 'sudo networkctl'
abbr cj 'journalctl'
abbr cs 'sudo systemctl'
abbr css 'sudo systemctl status'
abbr csr 'sudo systemctl restart'
abbr cse 'sudo systemctl enable'

abbr startm 'sudo systemctl start lightdm'

abbr gs 'git status'
abbr ga 'git add'
abbr gc 'git commit -a --allow-empty-message -m ""'
abbr gu 'git pull'
abbr gp 'git push'

abbr dps 'docker ps'
abbr dpsa 'docker ps -a'
abbr dstop 'docker stop (docker ps -q)'
abbr dclean 'docker rm -f (docker ps -a -q)'

alias dotgit 'git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

function renew
  sudo systemctl restart wpa_supplicant@wlp4s0
  sudo systemctl restart systemd-networkd
end
