sshd_root:
  file.replace:
    - name: /etc/ssh/sshd_config
    - pattern: PermitRootLogin without-password
    - repl: PermitRootLogin yes 

sshd_password:
  file.replace:
    - name: /etc/ssh/sshd_config
    - pattern: PasswordAuthentication no
    - repl: PasswordAuthentication yes

ssh:
  service.running:
    - enable: True
    - reload: True
    - watch:
      - file: /etc/ssh/sshd_config

