install:
	ansible-galaxy collection install -r requirements.yml
	ansible-galaxy role install -r requirements.yml

deploy:
	ansible-playbook -i inventory.ini -v playbook.yml --vault-password-file vault_password

# datadog.yml or vault.yml
FILE=vault.yml

# ansible-vault
encrypt:
	ansible-vault encrypt group_vars/webservers/${FILE} --vault-password-file vault_password

view:
	ansible-vault view group_vars/webservers/${FILE} --vault-password-file vault_password

decrypt:
	ansible-vault decrypt group_vars/webservers/${FILE} --vault-password-file vault_password
