admin:
  name:  Chih-Min Chao
  email: cmchao@gmail.com

chrony:
  ntpservers:
    - "0.tw.pool.ntp.org"
    - "1.tw.pool.ntp.org"
    - "2.tw.pool.ntp.org"
    - "3.tw.pool.ntp.org"


git:
  install_from_source: False
  # tells the state to include and require the git.pkgrepo state.
  install_pkgrepo: True


salt:
  # Set this to False to not have the formula install packages (in the case you
  # install Salt via git/pip/etc.)
  install_packages: True

  # the formulat use master.d/minion.d as configuration directory
  # so we remove the top-level version
  master_remove_config: True
  minion_remove_config: True

  master:
    interface: 0.0.0.0
    file_roots:
      base:
        - /srv/salt/state
        - /srv/salt/formula/chrony
        - /srv/salt/formula/git
        - /srv/salt/formula/openssh
        - /srv/salt/formula/salt
    file_ignore_glob:
        - '*.pyc'
        - '*.swp'
    pillar_roots:
      base:
        - /srv/salt/pillar
    hash_type: sha256
    file_ignore_regex:
      - '/\.svn($|/)'
      - '/\.git($|/)'

  minion:
    master: localhost


sshd_config:
  Port:
    - 22
    - 55688
  PermitRootLogin: 'no'
  AllowAgentForwarding: 'yes'
  X11Forwarding: 'yes'
