if (( ! ${+commands[starship]} )); then
  return 1
fi

if [[ ! -e ${0:h}/starship.zsh || ${0:h}/starship.zsh -ot ${commands[starship]} ]]; then
  starship init zsh --print-full-init >| ${0:h}/starship.zsh
fi
source ${0:h}/starship.zsh
