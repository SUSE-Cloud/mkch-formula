/root/pool:
  file.directory

/root/pool/1:
  file.directory:
    - require:
      - /root/pool

/root/pool/2:
  file.directory:
    - require:
      - /root/pool
