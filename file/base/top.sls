base:
  'os:CentOS':
    - match: grain
    - default.vim-enhanced

  'os:Ubuntu':
    - match: grain
    - default.vim

  'minion01':
    - roles.webserver
    - sites

  'minion02':
    - users.dba

  'minion03':
    - users.dba
    - users.qa

  'minion04':
    - users.all
    - run_first
