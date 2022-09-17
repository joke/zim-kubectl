(( ${+commands[kubectl]} || ${+commands[asdf]} && ${+functions[_direnv_hook]} )) && () {

  local command=${commands[kubectl]:-"$(${commands[asdf]} which kubectl 2> /dev/null)"}
  [[ -z $command ]] && return 1

  local compfile=$1/functions/_kubectl
  if [[ ! -e $compfile || $compfile -ot $command ]]; then
    $command completion zsh >| $compfile
    zimfw check-dumpfile
  fi

  local kprefix
  zstyle -s ':zim:kubectl' aliases-prefix 'kprefix' || kprefix=k

  # kubectl
  alias "${kprefix}"='kubectl'

  # kubectl get
  alias "${kprefix}g"='kubectl get'
  alias "${kprefix}gf"='kubectl get -f'
  alias "${kprefix}gk"='kubectl get -k'
  alias "${kprefix}gl"='kubectl get -l'
  alias "${kprefix}gw"='kubectl get -o wide'
  alias "${kprefix}gwa"='kubectl get --watch'
  alias "${kprefix}gy"='kubectl get -o yaml'

  # kubectl edit
  alias "${kprefix}e"='kubectl edit'
  alias "${kprefix}ef"='kubectl edit -f'
  alias "${kprefix}ek"='kubectl edit -k'
  alias "${kprefix}el"='kubectl edit -l'

  # delete
  alias "${kprefix}del"='kubectl delete'
  alias "${kprefix}delf"='kubectl delete -f'
  alias "${kprefix}delk"='kubectl delete -k'
  alias "${kprefix}dell"='kubectl delete -l'

  # describe
  alias "${kprefix}d"='kubectl describe'
  alias "${kprefix}dk"='kubectl describe -k'
  alias "${kprefix}dl"='kubectl describe -f'
  alias "${kprefix}dl"='kubectl describe -l'

  # config
  alias "${kprefix}ccc"='kubectl config current-context'
  alias "${kprefix}cdc"='kubectl config delete-context'
  alias "${kprefix}cgc"='kubectl config get-contexts'
  alias "${kprefix}csc"='kubectl config set-context'
  alias "${kprefix}cscn"='kubectl config set-context --current --namespace'
  alias "${kprefix}cuc"='kubectl config use-context'

  # label
  alias "${kprefix}la"='kubectl label'
  alias "${kprefix}lal"='kubectl label -l'

  # annotate
  alias "${kprefix}an"='kubectl annotate'
  alias "${kprefix}anl"='kubectl annotate -l'

  # apply
  alias "${kprefix}af"='kubectl apply -f'
  alias "${kprefix}ak"='kubectl apply -k'

  # log
  alias "${kprefix}l"='kubectl logs'
  alias "${kprefix}l1h"='kubectl logs --since 1h'
  alias "${kprefix}l1m"='kubectl logs --since 1m'
  alias "${kprefix}l1s"='kubectl logs --since 1s'
  alias "${kprefix}lf"='kubectl logs -f'
  alias "${kprefix}lf1h"='kubectl logs --since 1h -f'
  alias "${kprefix}lf1m"='kubectl logs --since 1m -f'
  alias "${kprefix}lf1s"='kubectl logs --since 1s -f'

  # exec
  alias "${kprefix}eti"='kubectl exec -t -i'

  # port-forward
  alias "${kprefix}pf"='kubectl port-forward'

  # top
  alias "${kprefix}tno"='kubectl top node'
  alias "${kprefix}tnol"='kubectl top node -l'
  alias "${kprefix}tpo"='kubectl top pod'
  alias "${kprefix}tpol"='kubectl top pod -l'

  # describe/edit/get/delete resources
  local -A resources
  resources=([a]=all [cj]=cronjob [cm]=configmap [cr]=clusterrole [crb]=clusterrolebinding [ds]=daemonset [dep]=deployment [deploy]=deployment [hpa]=horizontalpodautoscaler [ing]=ingress [j]=job [no]=node [ns]=namespace [pc]=priorityclass [pdb]=poddisruptionbudget [po]=pod [pv]=persistentvolume [pvc]=persistentvolumeclaim [rc]=replicationcontroller [rs]=replicaset [sa]=serviceaccount [sec]=secret [sts]=statefulset [svc]=service)
  for r in ${(k)resources}; do
    alias "${kprefix}d${r}"="kubectl describe ${resources[$r]}"
    alias "${kprefix}g${r}"="kubectl get ${resources[$r]}"
    alias "${kprefix}g${r}l"="kubectl get ${resources[$r]} -l"
    alias "${kprefix}g${r}w"="kubectl get ${resources[$r]} -o wide"
    alias "${kprefix}g${r}wa"="kubectl get ${resources[$r]} --watch"
    alias "${kprefix}g${r}y"="kubectl get ${resources[$r]} -o yaml"
    alias "${kprefix}e${r}"="kubectl edit ${resources[$r]}"
    alias "${kprefix}e${r}l"="kubectl edit ${resources[$r]} -l"
    alias "${kprefix}del${r}"="kubectl delete ${resources[$r]}"
  done

  # scale/rollout resources
  local -A resources
  resources=([dep]=deployment [deploy]=deployment [rc]=replicationcontroller [rs]=replicaset [sts]=statefulset)
  for r in ${(k)resources}; do
    alias "${kprefix}s${r}"="kubectl scale ${resources[$r]} --replicas"
    alias "${kprefix}rh${r}"="kubectl rollout history ${resources[$r]}"
    alias "${kprefix}rp${r}"="kubectl rollout pause ${resources[$r]}"
    alias "${kprefix}rr${r}"="kubectl rollout restart ${resources[$r]}"
    alias "${kprefix}rres${r}"="kubectl rollout resume ${resources[$r]}"
    alias "${kprefix}rs${r}"="kubectl rollout status ${resources[$r]}"
    alias "${kprefix}ru${r}"="kubectl rollout undo ${resources[$r]}"
  done

  # create resources
  local -A resources
  resources=([cj]=cronjob [cm]=configmap [cr]=clusterrole [crb]=clusterrolebinding [dep]=deployment [deploy]=deployment [ing]=ingress [j]=job [ns]=namespace [pc]=priorityclass [pdb]=poddisruptionbudget [sa]=serviceaccount [sec]=secret [svc]=service)
  for r in ${(k)resources}; do
    alias "${kprefix}c${r}"="kubectl create ${resources[$r]}"
  done
} ${0:h}
