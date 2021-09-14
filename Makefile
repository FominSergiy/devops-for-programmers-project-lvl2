install: 
	ansible-galaxy collection install -r requirements.yml

deploy:
	ansible-playbook -i inventory.ini -v playbook.yml --vault-password-file vault_password

run-local:
	docker pull redmine
	docker run -d -p 3000:3000 redmine

# encrypt file
encrypt:
	ansible-vault encrypt group_vars/webservers/vault.yml --vault-password-file vault_password

# decrypt
view:
	ansible-vault view group_vars/webservers/vault.yml --vault-password-file vault_password

decrypt:
	ansible-vault decrypt group_vars/webservers/vault.yml --vault-password-file vault_password

