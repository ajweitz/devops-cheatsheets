# lists all installed charts
helm list 

# Deploy a chart with helm (needs to be in chart folder):
helm dependency update # downloading the dependencies
helm upgrade --install <CHART_NAME> ./ # upgrade/install

# Uninstall a chart with helm:
helm uninstall <CHART_NAME>

# Debug a template
 helm template . # will render the template and show the resulting YAML