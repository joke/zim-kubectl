if (( ${+commands[kubectl]} )); then
  if [[ ! -e ${0:h}/kubectl.zsh || ${0:h}/kubectl.zsh -ot ${commands[kubectl]} ]]; then
    starship init zsh --print-full-init >| ${0:h}/kubectl.zsh
  fi
  source ${0:h}/kubectl.zsh
fi
