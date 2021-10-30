if (( ! ${+commands[kubectl]} )); then
  return 1
fi

if [[ ! -e ${0:h}/kubectl.zsh || ${0:h}/kubectl.zsh -ot ${commands[kubectl]} ]]; then
  ${commands[kubectl]} completion zsh >| ${0:h}/kubectl.zsh
fi
source ${0:h}/kubectl.zsh

local kprefix
zstyle -s ':zim:kubectl' aliases-prefix 'kprefix' || kprefix=k

# kubectl
print alias "${kprefix}"='kubectl'

# kubectl get
print alias "${kprefix}g"='kubectl get'
print alias "${kprefix}gf"='kubectl get -f'
print alias "${kprefix}gk"='kubectl get -k'
print alias "${kprefix}gl"='kubectl get -l'
print alias "${kprefix}gw"='kubectl get -o wide'
print alias "${kprefix}gwa"='kubectl get --watch'
print alias "${kprefix}gy"='kubectl get -o yaml'

# kubectl edit
print alias "${kprefix}e"='kubectl edit'
print alias "${kprefix}ef"='kubectl edit -f'
print alias "${kprefix}ek"='kubectl edit -k'
print alias "${kprefix}el"='kubectl edit -l'

# delete
print alias "${kprefix}del"='kubectl delete'
print alias "${kprefix}delf"='kubectl delete -f'
print alias "${kprefix}delk"='kubectl delete -k'
print alias "${kprefix}dell"='kubectl delete -l'

# describe
print alias "${kprefix}d"='kubectl describe'
print alias "${kprefix}dk"='kubectl describe -k'
print alias "${kprefix}dl"='kubectl describe -f'
print alias "${kprefix}dl"='kubectl describe -l'

# config
print alias "${kprefix}ccc"='kubectl config current-context'
print alias "${kprefix}cdc"='kubectl config delete-context'
print alias "${kprefix}cgc"='kubectl config get-contexts'
print alias "${kprefix}csc"='kubectl config set-context'
print alias "${kprefix}cscn"='kubectl config set-context --current --namespace'
print alias "${kprefix}cuc"='kubectl config use-context'

# label
print alias "${kprefix}la"='kubectl label'
print alias "${kprefix}lal"='kubectl label -l'

# annotate
print alias "${kprefix}an"='kubectl annotate'
print alias "${kprefix}anl"='kubectl annotate -l'

# apply
print alias "${kprefix}af"='kubectl apply -f'
print alias "${kprefix}ak"='kubectl apply -k'

# log
print alias "${kprefix}l"='kubectl logs'
print alias "${kprefix}l1h"='kubectl logs --since 1h'
print alias "${kprefix}l1m"='kubectl logs --since 1m'
print alias "${kprefix}l1s"='kubectl logs --since 1s'
print alias "${kprefix}lf"='kubectl logs -f'
print alias "${kprefix}lf1h"='kubectl logs --since 1h -f'
print alias "${kprefix}lf1m"='kubectl logs --since 1m -f'
print alias "${kprefix}lf1s"='kubectl logs --since 1s -f'

# exec
print alias "${kprefix}eti"='kubectl exec -t -i'

# port-forward
print alias "${kprefix}pf"='kubectl port-forward'

# top
print alias "${kprefix}tno"='kubectl top node'
print alias "${kprefix}tnol"='kubectl top node -l'
print alias "${kprefix}tpo"='kubectl top pod'
print alias "${kprefix}tpol"='kubectl top pod -l'

# describe/edit/get/delete resources
local -A resources
resources=([a]=all [cm]=configmap [cj]=cronjob [ds]=daemonset [dep]=deployment [deploy]=deployment [hpa]=horizontalpodautoscaler [ing]=ingress [j]=job [ns]=namespace [no]=node [pdb]=poddisruptionbudget [pvc]=persistentvolumeclaim [pv]=persistentvolume [po]=pod [rc]=replicationcontroller [rs]=replicaset [sa]=serviceaccount [svc]=service [sec]=secret [sts]=statefulset)
for r in ${(k)resources}; do
  print alias "${kprefix}d${r}"="kubectl describe ${resources[$r]}"
  print alias "${kprefix}g${r}"="kubectl get ${resources[$r]}"
  print alias "${kprefix}g${r}l"="kubectl get ${resources[$r]} -l"
  print alias "${kprefix}g${r}w"="kubectl get ${resources[$r]} -o wide"
  print alias "${kprefix}g${r}wa"="kubectl get ${resources[$r]} --watch"
  print alias "${kprefix}g${r}y"="kubectl get ${resources[$r]} -o yaml"
  print alias "${kprefix}e${r}"="kubectl edit ${resources[$r]}"
  print alias "${kprefix}e${r}l"="kubectl edit ${resources[$r]} -l"
  print alias "${kprefix}del${r}"="kubectl delete ${resources[$r]}"
done
unset resources

# scale/rollout resources
local -A resources
resources=([dep]=deployment [deploy]=deployment [rc]=replicationcontroller [rs]=replicaset [sts]=statefulset)
for r in ${(k)resources}; do
  print alias "${kprefix}s${r}"="kubectl scale ${resources[$r]} --replicas"
  print alias "${kprefix}rh${r}"="kubectl rollout history ${resources[$r]}"
  print alias "${kprefix}rp${r}"="kubectl rollout pause ${resources[$r]}"
  print alias "${kprefix}rr${r}"="kubectl rollout restart ${resources[$r]}"
  print alias "${kprefix}rres${r}"="kubectl rollout resume ${resources[$r]}"
  print alias "${kprefix}rs${r}"="kubectl rollout status ${resources[$r]}"
  print alias "${kprefix}ru${r}"="kubectl rollout undo ${resources[$r]}"
done
unset resources
