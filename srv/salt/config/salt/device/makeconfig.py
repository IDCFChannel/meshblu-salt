#!/usr/bin/env python
# -*- coding: utf-8 -*-
import json
import os

base = '/root/iot_apps/meshblu-compose/manage/data'

with open(os.path.join(base, 'host.json')) as data_file:
    host = json.load(data_file)
    ipaddress = host['ipaddress']

with open(os.path.join(base, 'devices.json')) as data_file:
    devices = json.load(data_file)

trigger = [x for x in devices if x['keyword'] == 'trigger-1'][0]
print(trigger)

action = [x for x in devices if x['keyword'] == 'action-1'][0]
print(action)

config = [ 'conf = {',
           '    "IDCF_CHANNEL_URL": "'+ipaddress+'",',
           '    "TRIGGER_1_UUID": "'+trigger['uuid']+'",',
           '    "TRIGGER_1_TOKEN": "'+trigger['token']+'",',
           '    "ACTION_1_UUID": "'+action['uuid']+'",',
           '    "ACTION_1_TOKEN": "'+action['token']+'",',
           '    "THRESHOLD": 30',
           '}'
         ]

configStr = '\n'.join(config)
print(configStr)

with open('/root/iot_apps/meshblu-compose/sensortag/config.py', mode='w') as a_file:
    a_file.write(configStr)
