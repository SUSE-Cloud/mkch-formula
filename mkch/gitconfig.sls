{% set homedir = salt['pillar.get']('jenkins:homedir') %}

{{homedir}}/.gitconfig:
  file.managed:
    - contents: |
        [user]
                name = Jenkins User
                email = cloud-devel+jenkins@suse.de
