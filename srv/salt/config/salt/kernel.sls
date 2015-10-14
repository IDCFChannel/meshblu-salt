{% if grains.get('kernel-done') != 'completed' %}

kernel-update:
  pkg.installed:
    - refresh: True
    - pkgs:
      - linux-image-3.19.0-30-generic
      - linux-image-extra-3.19.0-30-generic

grub-cmdline:
  file.replace:
    - name: /etc/default/grub
    - pattern: GRUB_CMDLINE_LINUX=""
    - repl: GRUB_CMDLINE_LINUX="cgroup_enable=memory swapaccount=1"

kernel-done:
  module.run:
    - name: grains.setval
    - key: kernel-done
    - val: completed

system.reboot:
  module.run:
    - watch:
      - pkg: kernel-update

{% endif %}

