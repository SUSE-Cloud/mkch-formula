/etc/cron.hourly/zypper-up:
  file.managed:
    - mode: 0755
    - contents: |
        #!/bin/sh
        zypper -n up -l --no-recommends
