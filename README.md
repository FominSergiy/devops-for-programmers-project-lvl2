### Hexlet tests and linter status:
[![Actions Status](https://github.com/FominSergiy/devops-for-programmers-project-lvl2/workflows/hexlet-check/badge.svg)](https://github.com/FominSergiy/devops-for-programmers-project-lvl2/actions)

# Requirements

- [Docker](https://www.docker.com/get-started) v20.10.7
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) v2.11.3
- [Python](https://www.python.org/downloads/) v3.9.6
- run to install required packages

```bash
$ make install
```

I am using DigitalOcean to host my servers. For your vm **make sure you use image with Docker installed, or install it yourself**.
- [digitalOcean](https://www.digitalocean.com/)
- [vm-image](https://marketplace.digitalocean.com/apps/docker)

# Prep the project

> The `playbook.yml` deploys a `redmine` app container with a db container attached to it
>
> Logging is setup with Datadog

1. Make sure you use your servers' ip addresses with an ssh key.
2. Local test
    - app should be available on `http://localhost:3000`

```bash
$ make run-local-simple-version
```

3. Clean-up

```bash
$ docker container ls

CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS          PORTS                                       NAMES
790f2bbf2fa4   redmine   "/docker-entrypoint.…"   41 seconds ago   Up 40 seconds   0.0.0.0:3000->3000/tcp, :::3000->3000/tcp   sweet_bouman
```

```bash
$ docker container rm -f <YOUR-CONTAINER-ID>
```

4. Deploy
    - run to deploy

```bash
$ make deploy
```