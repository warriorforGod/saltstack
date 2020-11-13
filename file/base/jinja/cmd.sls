{% set who = salt['cmd.run']('whoami') %}
{% set ip = salt['cmd.run']('ip -4 -o addr show eth0') %}
jinja_cmd:
  cmd.run:
  - name: "echo 'Whoami gives {{ who }}, and my IP Addres is {{ ip }}'"
