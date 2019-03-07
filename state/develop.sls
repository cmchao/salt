develop_gem5:
  pkg.installed:
    - pkgs:
      - libprotobuf-dev
      - protobuf-compiler
      - python-dev
      - swig

develop_qemu:
  pkg.installed:
    - pkgs:
      - libfdt-dev 
      - libgles2-mesa-dev 
      - libjpeg-turbo8-dev 
      - libsasl2-dev 
      - libspice-server-dev
      - libbz2-dev

develop_network:
  pkg.installed:
    - pkgs:
      - libcunit1-dev
      - libpcap-dev

develop_gcc:
  pkg.installed:
    - pkgs:
      - bison
      - flex
      - gawk
      - libz-dev
      - libssl-dev
      - libgmp-dev
      - libmpfr-dev
      - libmpc-dev

