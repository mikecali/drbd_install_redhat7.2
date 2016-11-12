DRDB Install and Configure
=========

This role is to install drdb on RedHat 7.2 server, configure 2 nodes and mount XFS filesystem.

Requirements
------------

Mounted raw disk on target VM
DRDB Repo: http://www.elrepo.org/elrepo-release-7.0-2.el7.elrepo.noarch.rpm
OS Repo: (I use RedHat Satellite)
python-pexpect-3.3

Role Variables
--------------

### DRBD Variable
drbd_repo: http://www.elrepo.org/elrepo-release-7.0-2.el7.elrepo.noarch.rpm
drbd_key: /etc/pki/rpm-gpg/RPM-GPG-KEY-elrepo.org
drbd_packages:
 - { package: 'kmod-drbd84', state: 'latest'  }
 - { package: 'drbd84-utils', state: 'latest' }
drbd_resource: mq-resource


Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

- name: DRBD Install/Configure
  hosts: all
  user: rhel
  become: yes

  roles:
    - { role: drbd_install_redhat7.2 }

License
-------

BSD

Author Information
------------------

MikeCali. Ansible fanatics
