# Ansible

## Directory Structure
There are several ways you can go about, you can check [Ansible Documentation](https://docs.ansible.com/ansible/2.8/user_guide/playbooks_best_practices.html#directory-layout) for more information.  

`ansible.sh` - This is just an example of shell commands you can run with the ansible CLI, it is not part of an actual project

`inventory.ini` - This is where we define **hosts**
`playbook-example.yml` - This is where we select which **roles** to run on what **hosts**  
`ansible.cfg` - Some configuration for ansible

`roles` - Directory containing **roles**. Roles used to group a set of **tasks**, similar to classes in programming.

## Tips
Always check [Ansible Galaxy](https://galaxy.ansible.com/) for existing roles, there is a lot of stuff people already wrote so you don't have to reinvent the wheel.