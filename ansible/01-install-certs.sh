#!/usr/bin/env ansible-playbook
---
- hosts: localhost
  vars_files:
  - ../cluster.yml
  tasks:
  - import_role:
      name: ocp4-acme-certs
      tasks_from: main.yml
#      tasks_from: certificate-install.yml
#      tasks_from: certificate-generate.yml
#      tasks_from: install-acme.yml
