generate-json:
  cmd.script:
    - source: salt://device/generate.sh
    - cwd: /root/iot_apps/meshblu-compose

copy-host-json:
  cmd.run:
    - name: cp /root/host.json /root/iot_apps/meshblu-compose/manage/data

make-config:
  cmd.script:
    - source: salt://device/makeconfig.py
    - cwd: /root/iot_apps/meshblu-compose

start-manage:
  cmd.script:
    - source: salt://device/start.sh
    - cwd: /root/iot_apps/meshblu-compose

