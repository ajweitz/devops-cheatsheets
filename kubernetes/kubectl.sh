# Setting default namespace to mynamespace (to run kubectl commands without -n mynamespace):
kubectl config set-context --current --namespace=mynamespace

# Get pod names in current namespace:
kubectl get pods

# Get services in current namespace:
kubectl get svc

# Get logs (STDOUT) from a specific pod:
kubectl logs <POD_NAME>

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