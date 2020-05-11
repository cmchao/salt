############################################
# from pkgrepo
#

repo_vim:
   pkgrepo.managed:
    - ppa: laurent-boulard/vim

#####################
# from normal pkgs
#

# add i386 arch
i386_arch:
  cmd.run:
    - name: dpkg --add-architecture i386
    - unless: dpkg --print-foreign-architectures | grep i386
  pkg.installed:
    - pkgs:
      - libc6:i386
      - libncurses5:i386
      - libstdc++6:i386


pkgs_common:
  pkg.installed:  
    - pkgs: 
      - byobu
      - curl
      - dictzip
      - git-svn      
      - git-review   # gerrit git reviewing tool
      - parallel
      - pxz          # parallel xz
      - rar          # official rar tool
      - texinfo
      - tftp-hpa     # alternative tftp client
      - tree
      - tmux
      - vim

pkgs_develop_tool:
  pkg.installed:  
    - pkgs: 
      - automake                        #build system
      - autotools-dev                   #build system
      - build-essential                 #gcc
      - cmake                           #build system
      - codespell                       #spell checking for checkpatch.pl in u-boot and Linux
      - cscope                          #generate tags files
      - device-tree-compiler            #used in Linux and u-boot
      - doxygen                         #documentation
      - gcovr                           #profiling
      - environment-modules             #for grid environment
      - hg-fast-export                  #version control
      - libtool                         #link tool
      - linux-tools-generic-lts-xenial  #perf for 4.4 kernel
      - minicom                         #uart connection
      - mercurial                       #version control
      - repo                            #handle bunch of repos
      - scons                           #build system
      - sqlite3                         #simple sql database
      - tig                             #git ncurses-based viewer
      - valgrind                        #memory leak and heap checker

pkgs_development_lib:
  pkg.installed:  
    - pkgs: 
      - libboost-all-dev
      - libglib2.0-dev
      - libgtk2.0-dev
      - libgoogle-perftools-dev

pkgs_admin_tool:
  pkg.installed:
    - pkgs:
      - apt-file          #reverse search installed file tool
      - aptitude          #alternative to apt-get
      - bridge-utils      #bridge setup tool
      - htop              #color top
      - gparted           #disk partition manipulation
      - iftop             #network monitor tool
      - iotop             #monitor system io
      - mdadm             #software raid management tool
      - python-pip        #python official package tool
      - python3-pip       #python3 official package tool
      - snmp              #snmp utility
      - sysstat           #linux performance tool
      - uml-utilities     #tuntap tool

pkgs_secure_tool:
  pkg.installed:
    - pkgs:
      - sshguard          #simple ssh attacking defender

##########################################
# other
#
env_lecale:
  locale.present:
    - name: zh_TW.UTF-8


#########################################
# managed by formula
# 
include:
  - chrony
  - git
  - openssh
  - openssh.client
  - openssh.config
  - salt.minion

