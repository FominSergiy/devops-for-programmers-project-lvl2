install: 
	ansible-galaxy collection install -r requirements.yml

deploy:
	ansible-playbook -i inventory.ini -v playbook.yml

run-local:
	docker pull redmine
	docker run -d -p 3000:3000 redmine

