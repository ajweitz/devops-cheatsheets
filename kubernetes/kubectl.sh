# Setting default namespace to mynamespace (to run kubectl commands without -n mynamespace):
kubectl config set-context --current --namespace=mynamespace

# Get pod names in current namespace:
kubectl get pods

# Get services in current namespace:
kubectl get svc

# Get All objects (Pods, ReplicaSets, etc...)
kubectl get all

# Get objects matching a selector
kubectl get <RESOURCE_TYPE> --selector <KEY>=<VALUE>,<KEY2>=<VALUE2>

# Get objects without header (for counting purposes)
kubectl get <RESOURCE_TYPE> --no-headers

# Get logs (STDOUT) from a specific pod:
kubectl logs <POD_NAME>
kubectl logs -f <POD_NAME> # stream the logs live

# Get pod deployment information (useful when pod failed to deploy):
kubectl describe pod <POD_NAME>

# SSH into a pod:
kubectl exec --stdin --tty <POD_NAME> -- /bin/bash

# running a command on a pod
kubectl exec <POD_NAME> -- <SOME_COMMAND>

# Port Forwarding - you can forward a port from your PC directly to a pod/service in Kubernetes environment:
kubectl port-forward <POD_NAME> <PORT_NUMBER> # port forward to a POD
kubectl port-forward svc/<SERVICE_NAME> <PORT_NUMBER> # port forward to a SERVICE
kubectl port-forward deployment/<DEPLOYMENT_NAME> <PORT_NUMBER> # port forward to a DEPLOYMENT

# Get information about our current quota (resources available vs. used):
kubectl describe quota

# Copy a folder from your computer to a pod:
kubectl cp <DIR_ON_YOUR_PC> <POD_NAME>:<DESTINATION_DIR_ON_POD>

# delete a resource
kubectl delete <RESOURCE_TYPE> <RESOURCE_NAME> # RESOURCE TYPE can be pod, service, etc...

# extract resource to yaml
kubectl get <RESOURCE_TYPE> <RESOURCE_NAME> -o yaml > some-definition.yaml

# dry run (testing if a resource can be deployed)
kubectl apply -f someconfig.yml --dry-run=client

# create a configuration template
kubectl create/run <RESOURCE_TYPE> <OPTIONAL_PARAMS> <NAME> --dry-run -o yaml

# show rollout status
kubectl rollout status deployment/<DEPLOYMENT_NAME>

# show deployment history
kubectl rollout history deployment <DEPLOYMENT_NAME>

# undo a deployment
kubectl rollout undo deployment <DEPLOYMENT_NAME>

# evict pods from a node
kubectl drain <NODE_NAME> # it will move to "unschedulable" state. To return node online run kubectl uncordon

# bringing back a node online after eviction
kubectl uncordon <NODE_NAME>

# mark a node as unschedulable
kubectl cordon <NODE_NAME>

#####################
# IMPERATIVE EXAMPLES
#####################

# create a pod
kubectl run <POD_NAME> --image=<IMAGE_NAME> --labels=<KEY>=<VALUE> --port=<PORT>

# create a service
kubectl create service <SERVICE_TYPE> <SERVICE_NAME> --tcp=<PORT>

# create a deployment
kubectl create deployment <DEPLOYMENT_NAME> --image=<IMAGE_NAME> --replicas=<AMOUNT_OF_REPLICAS>

# create a namespace
kubectl create namespace <NAMESPACE>

# create a configmap
kubectl create configmap <CONFIG_MAP_NAME> --from-literal=<KEY>=<VALUE>

# create a serviceaccount
kubectl create serviceaccount <ACCOUNT_NAME>

# taint a node
kubectl taint nodes <NODE_NAME> <KEY>=<VALUE>:<NoSchedule|PreferNoSchedule|NoExecute>

# remove a taint from a node
kubectl taint nodes <NODE_NAME> <TAINT_KEY>-

# label a node
kubectl label nodes <NODE_NAME> <LABEL_KEY>=<LABEL_VALUE>

# create an ingress
kubectl create ingress <INGRESS_NAME> --rule="<HOST>/<PATH>=<SERVICE_NAME>:<SERVICE_PORT>"