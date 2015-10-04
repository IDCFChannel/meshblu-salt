restart-minion:
  cmd.run:
    - name: |
      nohup /bin/sh -c 'sleep 10 && salt-call --local service.restart salt-minion'
    - python_shell: True
    - order: last

