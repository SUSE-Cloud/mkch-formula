{% set homedir = salt['pillar.get']('jenkins:homedir') %}

{{homedir}}/.gitconfig:
  file.managed:
    - contents: |
        [branch]
                autosetuprebase = always
        [push]
                default = current
        [user]
                name = Jenkins User
                email = cloud-devel+jenkins@suse.de
