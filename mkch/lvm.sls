# setup filters for what devices can be used as pv,
# so that we dont collide with cinder, drbd etc

/etc/lvm/lvm.conf:
  file.replace:
    - pattern: "^ *filter = .*"
    - repl: '    filter = [ "r|/dev/.*/by-path/.*|", "r|/dev/.*/by-id/.*|", "r|/dev/fd.*|", "r|/dev/cdrom|", "r|/dev/mapper/cloud-|", "r|/dev/cloud/|", "r|/dev/mapper/mkcvg|", "r|/dev/mkcvg|", "r|/dev/mapper/drbd-|", "r|/dev/drbd/|", "r|/dev/dm-|", "a/.*/" ] # this line is managed by salt'

lvm.conf-ssd-discard:
  file.replace:
    - name: /etc/lvm/lvm.conf
    - pattern: "^ *issue_discards = .*"
    - repl: '    issue_discards = 1 # this line is managed by salt'
