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
kubectl create <RESOURCE_TYPE> <OPTIONAL_PARAMS> <NAME> --dry-run -o yaml