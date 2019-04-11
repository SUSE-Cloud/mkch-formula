/etc/cron.hourly/zypper-up:
  file.managed:
    - mode: 0755
    - contents: |
        #!/bin/sh
        zypper -n up -l --no-recommends

/etc/cron.hourly/update-automation:
  file.managed:
    - mode: 0755
    - contents: |
        #!/bin/sh
        # managed by salt
        path="/root/github.com/SUSE-Cloud/automation/scripts/jenkins"
        if [ -x "$path/update_automation" ]; then
            $path/update_automation
        fi
