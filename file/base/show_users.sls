{% set all_users = {
    'salt-master': [],
    'minion01': [],
    'minion02': ['wilma'],
    'minion03': ['wilma', 'barney', 'betty'],
    'minion04': ['wilma', 'barney', 'betty', 'fred'],
    'minion05': ['wilma', 'barney', 'betty', 'fred'],
} %}
{% set cur_users = salt['grains.filter_by'](all_users, grain='id') %}
show_users:
  cmd.run:
  - name: "echo 'User list is {{ cur_users }}'"
