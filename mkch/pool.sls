{% set homedir = salt['pillar.get']('jenkins:homedir') %}
{% set user = salt['pillar.get']('jenkins:systemuser') %}
allocationpool:
  file.directory:
    - name: {{homedir}}/pool
    - user: {{user}}

{{homedir}}/pool/1:
  file.directory:
    - user: {{user}}
    - require:
      - allocationpool

{{homedir}}/pool/2:
  file.directory:
    - user: {{user}}
    - require:
      - allocationpool
