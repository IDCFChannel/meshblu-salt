#!/usr/bin/env python
# -*- coding: utf-8 -*-
import json

f = open('/root/ipaddress','r')
ipaddress = f.read().rstrip()
f.close()
print(ipaddress)

f = open('/root/iot_apps/meshblu-compose/manage/data/devices.json')
devices = json.load(f)

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

