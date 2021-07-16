#!/usr/bin/env ansible-playbook
---
- hosts: localhost
#  vars_files:
#  - ../cluster.yml
  tasks:
  - import_role:
      name: generate-acme-certs
      tasks_from: main.yml
    vars:
      common_names:
      - "api.huet.net"
      - "*.apps.huet.net"
      acme_server: https://acme-staging-v02.api.letsencrypt.org/directory
      challenge_alias: clustership.com
      dns_provider: dnsimple
      dns_provider_env:
        DNSimple_OAUTH_TOKEN: trucbidule
        DNSimple_SECRET: zboubiblo
