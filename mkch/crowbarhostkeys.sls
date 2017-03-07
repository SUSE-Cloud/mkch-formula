root_ssh_dir_exists:
  file.directory:
    - name: /root/.ssh
    - user: root
    - group: root
    - mode: 700

ignore-crowbar-host-keys:
  file.append:
    - name: /root/.ssh/config
    - require:
      - /root/.ssh
    - text: |
        Host crowbar* 192.168.*.10
          NumberOfPasswordPrompts 1
          UserKnownHostsFile /dev/null
          StrictHostKeyChecking no
