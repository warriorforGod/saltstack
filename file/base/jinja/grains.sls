{% set name = grains['id'] %}
{% set os = grains['os'] %}
jinja_grains:
  cmd.run:
  - name: "echo 'My name is {{ name }}, and my OS is {{ os }}'"
