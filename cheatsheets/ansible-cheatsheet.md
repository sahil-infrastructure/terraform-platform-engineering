# Ansible Cheat Sheet

This cheat sheet summarizes how Ansible was used in this project.

## Purpose

Automate Docker application deployment on the AWS EC2 instance after infrastructure provisioning.

## Commands Covered

- ansible-playbook
- docker pull
- docker stop
- docker rm
- docker run
- docker ps

## Tasks Performed

- Connected to EC2 through SSH
- Pulled latest Docker image
- Removed old container
- Started new container
- Verified deployment

## Outcome

The application deployment became fully automated through Jenkins and Ansible without requiring manual SSH access.
