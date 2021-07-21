# Installing a role from: https://galaxy.ansible.com/
ansible-galaxy install <some_galaxy_role>

# Running the playbook-example.yml
ansible-playbook playbook-example.yml

# Passing variables from the cli:
ansible-playbook playbook-example.yml --extra-vars var_from_cli="some var"