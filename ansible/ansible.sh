# Installing a role from: https://galaxy.ansible.com/
ansible-galaxy install <some_galaxy_role>

# Installing roles from a requirements.yml file:
ansible-galaxy install -r requirements.yml

# Running the playbook-example.yml
ansible-playbook playbook-example.yml

# Passing variables from the cli:
ansible-playbook playbook-example.yml --extra-vars var_from_cli="some var"