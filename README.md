### Hexlet tests and linter status:
[![Actions Status](https://github.com/FominSergiy/devops-for-programmers-project-lvl2/workflows/hexlet-check/badge.svg)](https://github.com/FominSergiy/devops-for-programmers-project-lvl2/actions)

# Requirements

- [Docker](https://www.docker.com/get-started) v20.10.7
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) v2.11.3
- [Python](https://www.python.org/downloads/) v3.9.6
- run `make install` to install required packages

# Prep the project

> This deploys a simple container with `redmine` app to servers defined in `inventory.ini`

1. Make sure you use your servers' ip addresses with an ssh key.
2. Local test
    - run `make run-local` - app should be available on `http://localhost:3000`
3. Clean-up
    - `docker contaiener ls`
    - `docker container rm -f <CONTAINER-ID>`
4. Deploy
    - run `make deploy` to deploy this app to your servers
