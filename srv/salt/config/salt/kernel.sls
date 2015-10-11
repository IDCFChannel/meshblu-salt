{% if grains.get('kernel-done') != 'completed' %}

kernel-update:
  pkg.installed:
    - refresh: True
    - pkgs:
      - linux-image-3.19.0-30-generic
      - linux-image-extra-3.19.0-30-generic

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
