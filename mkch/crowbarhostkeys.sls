{% set homedir = salt['pillar.get']('jenkins:homedir') %}
{% set user = salt['pillar.get']('jenkins:systemuser') %}

root_ssh_dir_exists:
  file.directory:
    - name: {{homedir}}/.ssh
    - user: {{user}}
    - group: root
    - mode: 700

ignore-crowbar-host-keys:
  file.append:
    - name: {{homedir}}/.ssh/config
    - require:
      - root_ssh_dir_exists
    - text: |
        Host crowbar* 192.168.*.10
          NumberOfPasswordPrompts 1
          UserKnownHostsFile /dev/null
          StrictHostKeyChecking no
