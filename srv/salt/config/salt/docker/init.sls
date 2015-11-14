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
    - name: ./bootstrap.sh && sleep 30 && docker-compose run --rm iotutil -- register && docker-compose run --rm iotutil -- list
    - cwd: /root/iot_apps/meshblu-compose

#meshblu-register:
#  cmd.run:
#    - name: sleep 25 && docker-compose run --rm iotutil register
#    - cwd: /root/iot_apps/meshblu-compose

mosquitto-install:
  pkg.installed:
    - pkgs:
      - mosquitto-clients
