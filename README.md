# zim-kubectl

[zim module](https://github.com/zimfw/zimfw) for [kubectl](https://kubernetes.io/docs/reference/kubectl/kubectl/).

## Features

* Completion
* Aliases

## Settings

You can customize the default prefix by adding a `zstyle` to your `~/.zshrc` before this module is initialized.

```
zstyle ':zim:kubectl' aliases-prefix 'K'
```

## Aliases

### Command specific aliases (e.g. `get`, `edit`)

|Command Group|Alias|Command|
|--|--|--|
||`k`|kubectl`|
|__get__|`kg`|`kubectl get`|
||`kgf`|`kubectl get -f`|
||`kgk`|`kubectl get -k`|
||`kgl`|`kubectl get -l`|
||`kgw`|`kubectl get -o wide`|
||`kgwa`|`kubectl get --watch`|
||`kgy`|`kubectl get -o yaml`|
|__edit__|`ke`|`kubectl edit`|
||`kef`|`kubectl edit -f`|
||`kek`|`kubectl edit -k`|
||`kel`|`kubectl edit -l`|
|__delete__|`kdel`|`kubectl delete`|
||`kdelf`|`kubectl delete -f`|
||`kdelk`|`kubectl delete -k`|
||`kdell`|`kubectl delete -l`|
|__describe__|`kd`|`kubectl describe`|
||`kdk`|`kubectl describe -k`|
||`kdl`|`kubectl describe -f`|
||`kdl`|`kubectl describe -l`|
|__config__|`kccc`|`kubectl config current-context`|
||`kcdc`|`kubectl config delete-context`|
||`kcgc`|`kubectl config get-contexts`|
||`kcsc`|`kubectl config set-context`|
||`kcscn`|`kubectl config set-context --current --namespace`|
||`kcuc`|`kubectl config use-context`|
|__label__|`kla`|`kubectl label`|
||`klal`|`kubectl label -l`|
|__annotate__|`kan`|`kubectl annotate`|
||`kanl`|`kubectl annotate -l`|
|__apply__|`kaf`|`kubectl apply -f`|
||`kak`|`kubectl apply -k`|
|__logs__|`kl`|`kubectl logs`|
||`kl1h`|`kubectl logs --since 1h`|
||`kl1m`|`kubectl logs --since 1m`|
||`kl1s`|`kubectl logs --since 1s`|
||`klf`|`kubectl logs -f`|
||`klf1h`|`kubectl logs --since 1h -f`|
||`klf1m`|`kubectl logs --since 1m -f`|
||`klf1s`|`kubectl logs --since 1s -f`|
|__exec__|`keti`|`kubectl exec -t -i`|
|__port-forward__|`kpf`|`kubectl port-forward`|
|__top__|`ktno`|`kubectl top node`|
||`ktnol`|`kubectl top node -l`|
||`ktpo`|`kubectl top pod`|
||`ktpol`|`kubectl top pod -l`|
|__all: `a`__|`kda`|`kubectl describe all`|
||`kga`|`kubectl get all`|
||`kgal`|`kubectl get all -l`|
||`kgaw`|`kubectl get all -o wide`|
||`kgawa`|`kubectl get all --watch`|
||`kgay`|`kubectl get all -o yaml`|
||`kea`|`kubectl edit all`|
||`keal`|`kubectl edit all -l`|
||`kdela`|`kubectl delete all`|

### Resource specific aliases (`get pod`, `edit pod`)

Resource specific aliases are generated based on these abbreviations:

|Abbreviation|kubernetes resource|
|--|--|
|__a__|all|
|__cj__|cronjob|
|__cm__|configmap|
|__cr__|clusterrole|
|__crb__|clusterrolebinding|
|__dep__|deployment|
|__deploy__|deployment|
|__hpa__|horizontalpodautoscaler|
|__ing__|ingress|
|__j__|job|
|__no__|node|
|__ns__|namespace|
|__pc__|priorityclass|
|__pdb__|poddisruptionbudget|
|__po__|pod|
|__pv__|persistentvolume|
|__pvc__|persistentvolumeclaim|
|__rc__|replicationcontroller|
|__rs__|replicaset|
|__sa__|serviceaccount|
|__sec__|secret|
|__sts__|statefulset|
|__svc__|service|

|Resource Group|Alias|Command|
|--|--|--|
|__clusterrole: `cr`__|`kdcr`|`kubectl describe clusterrole`|
||`kgcr`|`kubectl get clusterrole`|
||`kgcrl`|`kubectl get clusterrole -l`|
||`kgcrw`|`kubectl get clusterrole -o wide`|
||`kgcrwa`|`kubectl get clusterrole --watch`|
||`kgcry`|`kubectl get clusterrole -o yaml`|
||`kecr`|`kubectl edit clusterrole`|
||`kecrl`|`kubectl edit clusterrole -l`|
||`kdelcr`|`kubectl delete clusterrole`|
|__clusterrolebinding: `crb`__|`kdcrb`|`kubectl describe clusterrole`|
||`kgcrb`|`kubectl get clusterrole`|
||`kgcrbl`|`kubectl get clusterrole -l`|
||`kgcrbw`|`kubectl get clusterrole -o wide`|
||`kgcrbwa`|`kubectl get clusterrole --watch`|
||`kgcrby`|`kubectl get clusterrole -o yaml`|
||`kecrb`|`kubectl edit clusterrole`|
||`kecrbl`|`kubectl edit clusterrole -l`|
||`kdelcrb`|`kubectl delete clusterrole`|
|__configmap: `cm`__|`kdcm`|`kubectl describe configmap`|
||`kgcm`|`kubectl get configmap`|
||`kgcml`|`kubectl get configmap -l`|
||`kgcmw`|`kubectl get configmap -o wide`|
||`kgcmwa`|`kubectl get configmap --watch`|
||`kgcmy`|`kubectl get configmap -o yaml`|
||`kecm`|`kubectl edit configmap`|
||`kecml`|`kubectl edit configmap -l`|
||`kdelcm`|`kubectl delete configmap`|
|__cronjob: `cj`__|`kdcj`|`kubectl describe cronjob`|
||`kgcj`|`kubectl get cronjob`|
||`kgcjl`|`kubectl get cronjob -l`|
||`kgcjw`|`kubectl get cronjob -o wide`|
||`kgcjwa`|`kubectl get cronjob --watch`|
||`kgcjy`|`kubectl get cronjob -o yaml`|
||`kecj`|`kubectl edit cronjob`|
||`kecjl`|`kubectl edit cronjob -l`|
||`kdelcj`|`kubectl delete cronjob`|
|__daemonset: `ds`__|`kdds`|`kubectl describe daemonset`|
||`kgds`|`kubectl get daemonset`|
||`kgdsl`|`kubectl get daemonset -l`|
||`kgdsw`|`kubectl get daemonset -o wide`|
||`kgdswa`|`kubectl get daemonset --watch`|
||`kgdsy`|`kubectl get daemonset -o yaml`|
||`keds`|`kubectl edit daemonset`|
||`kedsl`|`kubectl edit daemonset -l`|
||`kdelds`|`kubectl delete daemonset`|
|__deployment: `dep`__|`kddep`|`kubectl describe deployment`|
||`kgdep`|`kubectl get deployment`|
||`kgdepl`|`kubectl get deployment -l`|
||`kgdepw`|`kubectl get deployment -o wide`|
||`kgdepwa`|`kubectl get deployment --watch`|
||`kgdepy`|`kubectl get deployment -o yaml`|
||`kedep`|`kubectl edit deployment`|
||`kedepl`|`kubectl edit deployment -l`|
||`kdeldep`|`kubectl delete deployment`|
|__deployment: `deploy`__|`kddeploy`|`kubectl describe deployment`|
||`kgdeploy`|`kubectl get deployment`|
||`kgdeployl`|`kubectl get deployment -l`|
||`kgdeployw`|`kubectl get deployment -o wide`|
||`kgdeploywa`|`kubectl get deployment --watch`|
||`kgdeployy`|`kubectl get deployment -o yaml`|
||`kedeploy`|`kubectl edit deployment`|
||`kedeployl`|`kubectl edit deployment -l`|
||`kdeldeploy`|`kubectl delete deployment`|
|__horizontalpodautoscaler: `hpa`__|`kdhpa`|`kubectl describe horizontalpodautoscaler`|
||`kghpa`|`kubectl get horizontalpodautoscaler`|
||`kghpal`|`kubectl get horizontalpodautoscaler -l`|
||`kghpaw`|`kubectl get horizontalpodautoscaler -o wide`|
||`kghpawa`|`kubectl get horizontalpodautoscaler --watch`|
||`kghpay`|`kubectl get horizontalpodautoscaler -o yaml`|
||`kehpa`|`kubectl edit horizontalpodautoscaler`|
||`kehpal`|`kubectl edit horizontalpodautoscaler -l`|
||`kdelhpa`|`kubectl delete horizontalpodautoscaler`|
|__ingress: `ing`__|`kding`|`kubectl describe ingress`|
||`kging`|`kubectl get ingress`|
||`kgingl`|`kubectl get ingress -l`|
||`kgingw`|`kubectl get ingress -o wide`|
||`kgingwa`|`kubectl get ingress --watch`|
||`kgingy`|`kubectl get ingress -o yaml`|
||`keing`|`kubectl edit ingress`|
||`keingl`|`kubectl edit ingress -l`|
||`kdeling`|`kubectl delete ingress`|
|__job: `j`__|`kdj`|`kubectl describe job`|
||`kgj`|`kubectl get job`|
||`kgjl`|`kubectl get job -l`|
||`kgjw`|`kubectl get job -o wide`|
||`kgjwa`|`kubectl get job --watch`|
||`kgjy`|`kubectl get job -o yaml`|
||`kej`|`kubectl edit job`|
||`kejl`|`kubectl edit job -l`|
||`kdelj`|`kubectl delete job`|
|__namespace: `ns`__|`kdns`|`kubectl describe namespace`|
||`kgns`|`kubectl get namespace`|
||`kgnsl`|`kubectl get namespace -l`|
||`kgnsw`|`kubectl get namespace -o wide`|
||`kgnswa`|`kubectl get namespace --watch`|
||`kgnsy`|`kubectl get namespace -o yaml`|
||`kens`|`kubectl edit namespace`|
||`kensl`|`kubectl edit namespace -l`|
||`kdelns`|`kubectl delete namespace`|
|__node: `no`__|`kdno`|`kubectl describe node`|
||`kgno`|`kubectl get node`|
||`kgnol`|`kubectl get node -l`|
||`kgnow`|`kubectl get node -o wide`|
||`kgnowa`|`kubectl get node --watch`|
||`kgnoy`|`kubectl get node -o yaml`|
||`keno`|`kubectl edit node`|
||`kenol`|`kubectl edit node -l`|
||`kdelno`|`kubectl delete node`|
|__persistentvolume: `pv`__|`kdpv`|`kubectl describe persistentvolume`|
||`kgpv`|`kubectl get persistentvolume`|
||`kgpvl`|`kubectl get persistentvolume -l`|
||`kgpvw`|`kubectl get persistentvolume -o wide`|
||`kgpvwa`|`kubectl get persistentvolume --watch`|
||`kgpvy`|`kubectl get persistentvolume -o yaml`|
||`kepv`|`kubectl edit persistentvolume`|
||`kepvl`|`kubectl edit persistentvolume -l`|
||`kdelpv`|`kubectl delete persistentvolume`|
|__persistentvolumeclaim: `pvc`__|`kdpvc`|`kubectl describe persistentvolumeclaim`|
||`kgpvc`|`kubectl get persistentvolumeclaim`|
||`kgpvcl`|`kubectl get persistentvolumeclaim -l`|
||`kgpvcw`|`kubectl get persistentvolumeclaim -o wide`|
||`kgpvcwa`|`kubectl get persistentvolumeclaim --watch`|
||`kgpvcy`|`kubectl get persistentvolumeclaim -o yaml`|
||`kepvc`|`kubectl edit persistentvolumeclaim`|
||`kepvcl`|`kubectl edit persistentvolumeclaim -l`|
||`kdelpvc`|`kubectl delete persistentvolumeclaim`|
|__pod: `po`__|`kdpo`|`kubectl describe pod`|
||`kgpo`|`kubectl get pod`|
||`kgpol`|`kubectl get pod -l`|
||`kgpow`|`kubectl get pod -o wide`|
||`kgpowa`|`kubectl get pod --watch`|
||`kgpoy`|`kubectl get pod -o yaml`|
||`kepo`|`kubectl edit pod`|
||`kepol`|`kubectl edit pod -l`|
||`kdelpo`|`kubectl delete pod`|
|__poddisruptionbudget: `pdb`__|`kdpdb`|`kubectl describe poddisruptionbudget`|
||`kgpdb`|`kubectl get poddisruptionbudget`|
||`kgpdbl`|`kubectl get poddisruptionbudget -l`|
||`kgpdbw`|`kubectl get poddisruptionbudget -o wide`|
||`kgpdbwa`|`kubectl get poddisruptionbudget --watch`|
||`kgpdby`|`kubectl get poddisruptionbudget -o yaml`|
||`kepdb`|`kubectl edit poddisruptionbudget`|
||`kepdbl`|`kubectl edit poddisruptionbudget -l`|
||`kdelpdb`|`kubectl delete poddisruptionbudget`|
|__priorityclass: `pc`__|`kdpc`|`kubectl describe priorityclass`|
||`kgpc`|`kubectl get priorityclass`|
||`kgpcl`|`kubectl get priorityclass -l`|
||`kgpcw`|`kubectl get priorityclass -o wide`|
||`kgpcwa`|`kubectl get priorityclass --watch`|
||`kgpcy`|`kubectl get priorityclass -o yaml`|
||`kepc`|`kubectl edit priorityclass`|
||`kepcl`|`kubectl edit priorityclass -l`|
||`kdelpc`|`kubectl delete priorityclass`|
|__replicationcontroller: `rc`__|`kdrc`|`kubectl describe replicationcontroller`|
||`kgrc`|`kubectl get replicationcontroller`|
||`kgrcl`|`kubectl get replicationcontroller -l`|
||`kgrcw`|`kubectl get replicationcontroller -o wide`|
||`kgrcwa`|`kubectl get replicationcontroller --watch`|
||`kgrcy`|`kubectl get replicationcontroller -o yaml`|
||`kerc`|`kubectl edit replicationcontroller`|
||`kercl`|`kubectl edit replicationcontroller -l`|
||`kdelrc`|`kubectl delete replicationcontroller`|
|__replicaset: `rs`__|`kdrs`|`kubectl describe replicaset`|
||`kgrs`|`kubectl get replicaset`|
||`kgrsl`|`kubectl get replicaset -l`|
||`kgrsw`|`kubectl get replicaset -o wide`|
||`kgrswa`|`kubectl get replicaset --watch`|
||`kgrsy`|`kubectl get replicaset -o yaml`|
||`kers`|`kubectl edit replicaset`|
||`kersl`|`kubectl edit replicaset -l`|
||`kdelrs`|`kubectl delete replicaset`|
|__serviceaccount: `sa`__|`kdsa`|`kubectl describe serviceaccount`|
||`kgsa`|`kubectl get serviceaccount`|
||`kgsal`|`kubectl get serviceaccount -l`|
||`kgsaw`|`kubectl get serviceaccount -o wide`|
||`kgsawa`|`kubectl get serviceaccount --watch`|
||`kgsay`|`kubectl get serviceaccount -o yaml`|
||`kesa`|`kubectl edit serviceaccount`|
||`kesal`|`kubectl edit serviceaccount -l`|
||`kdelsa`|`kubectl delete serviceaccount`|
|__secret: `sec`__|`kdsec`|`kubectl describe secret`|
||`kgsec`|`kubectl get secret`|
||`kgsecl`|`kubectl get secret -l`|
||`kgsecw`|`kubectl get secret -o wide`|
||`kgsecwa`|`kubectl get secret --watch`|
||`kgsecy`|`kubectl get secret -o yaml`|
||`kesec`|`kubectl edit secret`|
||`kesecl`|`kubectl edit secret -l`|
||`kdelsec`|`kubectl delete secret`|
|__statefulset: `sts`__|`kdsts`|`kubectl describe statefulset`|
||`kgsts`|`kubectl get statefulset`|
||`kgstsl`|`kubectl get statefulset -l`|
||`kgstsw`|`kubectl get statefulset -o wide`|
||`kgstswa`|`kubectl get statefulset --watch`|
||`kgstsy`|`kubectl get statefulset -o yaml`|
||`kests`|`kubectl edit statefulset`|
||`kestsl`|`kubectl edit statefulset -l`|
||`kdelsts`|`kubectl delete statefulset`|
|__service: `svc`__|`kdsvc`|`kubectl describe service`|
||`kgsvc`|`kubectl get service`|
||`kgsvcl`|`kubectl get service -l`|
||`kgsvcw`|`kubectl get service -o wide`|
||`kgsvcwa`|`kubectl get service --watch`|
||`kgsvcy`|`kubectl get service -o yaml`|
||`kesvc`|`kubectl edit service`|
||`kesvcl`|`kubectl edit service -l`|
||`kdelsvc`|`kubectl delete service`|
|__scale cronjob: `cj`__|`kccj`|`kubectl create cronjob`|
|__scale configmap: `cm`__|`kccm`|`kubectl create configmap`|
|__scale clusterrole: `cr`__|`kccr`|`kubectl create clusterrole`|
|__scale clusterrolebinding: `crb`__|`kccrb`|`kubectl create clusterrolebinding`|
|__scale deployment: `dep`__|`kcdep`|`kubectl create deployment`|
|__scale deployment: `deploy`__|`kcdep`|`kubectl create deployment`|
|__scale ingress: `ing`__|`kcing`|`kubectl create ingress`|
|__scale job: `j`__|`kcj`|`kubectl create job`|
|__scale namespace: `ns`__|`kcns`|`kubectl create namespace`|
|__scale priorityclass: `pc`__|`kcpc`|`kubectl create priorityclass`|
|__scale poddisruptionbudget: `pdb`__|`kcpdb`|`kubectl create poddisruptionbudget`|
|__scale serviceaccount: `sa`__|`kcsa`|`kubectl create serviceaccount`|
|__scale secret: `sec`__|`kcsec`|`kubectl create secret`|
|__scale service: `svc`__|`kcsvc`|`kubectl create service`|
|__rollout * deployment: `dep`__|`krhdep`|`kubectl rollout history deployment`|
||`krpdep`|`kubectl rollout pause deployment`|
||`krrdep`|`kubectl rollout restart deployment`|
||`krresdep`|`kubectl rollout resume deployment`|
||`krsdep`|`kubectl rollout status deployment`|
||`krudep`|`kubectl rollout undo deployment`|
|__rollout * deployment: `deploy`__|`krhdeploy`|`kubectl rollout history deployment`|
||`krpdeploy`|`kubectl rollout pause deployment`|
||`krrdeploy`|`kubectl rollout restart deployment`|
||`krresdeploy`|`kubectl rollout resume deployment`|
||`krsdeploy`|`kubectl rollout status deployment`|
||`krudeploy`|`kubectl rollout undo deployment`|
|__rollout * replicationcontroller: `rc`__|`krhrc`|`kubectl rollout history replicationcontroller`|
||`krprc`|`kubectl rollout pause replicationcontroller`|
||`krrrc`|`kubectl rollout restart replicationcontroller`|
||`krresrc`|`kubectl rollout resume replicationcontroller`|
||`krsrc`|`kubectl rollout status replicationcontroller`|
||`krurc`|`kubectl rollout undo replicationcontroller`|
|__rollout * replicaset: `rs`__|`krhrs`|`kubectl rollout history replicaset`|
||`krprs`|`kubectl rollout pause replicaset`|
||`krrrs`|`kubectl rollout restart replicaset`|
||`krresrs`|`kubectl rollout resume replicaset`|
||`krsrs`|`kubectl rollout status replicaset`|
||`krurs`|`kubectl rollout undo replicaset`|
|__rollout * statefulset: `sts`__|`krhsts`|`kubectl rollout history statefulset`|
||`krpsts`|`kubectl rollout pause statefulset`|
||`krrsts`|`kubectl rollout restart statefulset`|
||`krressts`|`kubectl rollout resume statefulset`|
||`krssts`|`kubectl rollout status statefulset`|
||`krusts`|`kubectl rollout undo statefulset`|
|__scale deployment: `dep`__|`ksdep`|`kubectl scale deployment --replicas`|
|__scale deployment: `deploy`__|`ksdeploy`|`kubectl scale deployment --replicas`|
|__scale replicationcontroller: `rc`__|`ksrc`|`kubectl scale replicationcontroller --replicas`|
|__scale replicaset: `rs`__|`ksrs`|`kubectl scale replicaset --replicas`|
