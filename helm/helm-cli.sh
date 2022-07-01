# create new chart
helm create <chart-name>

# lists all installed charts
helm list 

# Deploy a chart with helm (needs to be in chart folder):
helm dependency update # downloading the dependencies
helm upgrade --install <chart-name> ./ # upgrade/install

# Uninstall a chart with helm:
helm uninstall <chart-name>

# Rollback:
helm rollback <chart-name> <version>

# Debug a template
helm template . # will render the template and show the resulting YAML

# downloading a helm chart locally
helm repo add stable https://somechartrepo.storage.googleapis.com/
helm repo update
helm pull stable/somechart --untrar