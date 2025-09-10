#!/bin/bash

ansible all -m ansible.builtin.yum_repository \
-a 'file=MyBase name=MyBase description="base software" baseurl=http://192.168.10.10/pkg/BaseOS gpgcheck=false enabled=true'


ansible all -m ansible.builtin.yum_repository \
-a 'file=MyAppStream name=MyAppStream description="Appstream software" baseurl=http://192.168.10.10/pkg/AppStream/ gpgcheck=no enabled=yes'
