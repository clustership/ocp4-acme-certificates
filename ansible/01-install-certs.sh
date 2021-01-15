#!/usr/bin/env ansible-playbook
---
- hosts: localhost
  vars_files:
  - ../cluster.yml
  tasks:
  - import_role:
      name: ocp4-acme-certs
      tasks_from: main.yml
    vars:
      kubeconfig: "{{ lookup('env', 'KUBECONFIG') }}"
      k8s_validate_certs: false
#      tasks_from: certificate-install.yml
#      tasks_from: certificate-generate.yml
#      tasks_from: install-acme.yml
