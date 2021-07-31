# basic
terraform init # download the resource dependencies
terraform plan # see what terraform is about to perform
terraform apply # apply changes
terraform destroy # destroy the changes previously applied

# deployment information
terraform show # shows terraform state in a human-readable form
terraform state list # show a list of deployed resources
terraform state show some.resource.name # show the state of a specific resource