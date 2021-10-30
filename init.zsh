if (( ! ${+commands[kubectl]} )); then
  return 1
fi

if [[ ! -e ${0:h}/kubectl.zsh || ${0:h}/kubectl.zsh -ot ${commands[kubectl]} ]]; then
  kubectl completion zsh >| ${0:h}/kubectl.zsh
fi
source ${0:h}/kubectl.zsh
