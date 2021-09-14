install: 
	ansible-galaxy collection install -r requirements.yml

deploy:
	ansible-playbook -i inventory.ini -v playbook.yml --vault-password-file vault_password

run-local-simple-version:
	docker pull redmine
	docker run -d -p 3000:3000 redmine

# datadog.yml or vault.yml
WHICH_FILE=vault.yml

# ansible-vault
encrypt:
	ansible-vault encrypt group_vars/webservers/${WHICH_FILE} --vault-password-file vault_password

view:
	ansible-vault view group_vars/webservers/${WHICH_FILE} --vault-password-file vault_password

decrypt:
	ansible-vault decrypt group_vars/webservers/${WHICH_FILE} --vault-password-file vault_password

