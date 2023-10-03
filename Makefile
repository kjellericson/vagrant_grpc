all:

.PHONY: ansible
ansible:
	ansible-playbook -i ansible/inventory.ini ansible/playbooks/install.yaml
