# Setting default namespace to mynamespace (to run kubectl commands without -n mynamespace):
kubectl config set-context --current --namespace=mynamespace

# Get pod names in current namespace:
kubectl get pods

# Get logs (STDOUT) from a specific pod:
kubectl logs <POD_NAME>

# Get pod deployment information (useful when pod failed to deploy):
kubectl describe pod <POD_NAME>

# SSH into a pod:
kubectl exec --stdin --tty <POD_NAME> -- /bin/bash

#Port Forwarding - you can forward a port from your PC directly to a pod in Kubernetes environment:
kubectl post-forward <POD_NAME> <PORT_NUMBER>

# Get information about our current quota (resources available vs. used):
kubectl describe quota

# Copy a folder from your computer to a pod:
kubectl cp <DIR_ON_YOUR_PC> <POD_NAME>:<DESTINATION_DIR_ON_POD>