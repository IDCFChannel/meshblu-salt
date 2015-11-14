include:
  - common

git-meshblu-compose:
  git.latest:
    - name: https://github.com/IDCFChannel/meshblu-compose.git 
    - target: /root/iot_apps/meshblu-compose
    - require:
      - pkg: pkg-core 

meshblu-bootstrap:
  cmd.run:
    - name: /root/iot_apps/meshblu-compose/bootstrap.sh
    - cwd: /root/iot_apps/meshblu-compose

meshblu-register:
  cmd.run:
    - name: sleep 25 && docker-compose run --rm iotutil register
    - cwd: /root/iot_apps/meshblu-compose

mosquitto-install:
  pkg.installed:
    - pkgs:
      - mosquitto-clients
