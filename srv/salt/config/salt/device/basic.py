#!/usr/bin/env python
# -*- coding: utf-8 -*-
import json
import random

basic = '/root/iot_apps/meshblu-compose/manage/data/basic.json'
user='idcf'
num = 8
arr = list('0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ')
password = ''.join([random.choice(arr) for i in range(num)])
data = dict(user=user, password=password)

with open(basic, 'w') as f:
    json.dump(data, f, indent=4)
