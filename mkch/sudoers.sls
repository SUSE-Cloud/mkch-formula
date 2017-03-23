/etc/sudoers.d/jenkins:
  file.managed:
    - contents: |
        # this file is managed by salt
        {{salt['pillar.get']('jenkins:systemuser', 'jenkins')}} ALL=(ALL) NOPASSWD: ALL
