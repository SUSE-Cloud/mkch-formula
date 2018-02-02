mkch-sudo-installed:
  pkg.installed:
    - name: sudo

/etc/sudoers.d/jenkins:
  file.managed:
    - contents: |
        # this file is managed by salt
        {{salt['pillar.get']('jenkins:systemuser', 'jenkins')}} ALL=(ALL) NOPASSWD: ALL
    - require:
      - pkg: mkch-sudo-installed
