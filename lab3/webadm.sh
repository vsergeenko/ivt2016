#!/bin/bash

# creating user;
useradd webmaster > /dev/null
# setting password;
echo -e "Pa$$w0rd\nPa$$w0rd\n" | passwd webmaster
echo 'New password for webmaster is Pa$$w0rd'
# installing semanage;
yum -y install policycoreutils-python > /dev/null
# link user webmaster with selinux user staff_u;
semanage login -a -s staff_u -r s0-s0:c0.c1023 webmaster
# assigning possible roles for selinux user staff_u;
semanage user -m -R 'staff_r webadm_r system_r' staff_u
# making changes in sudoers config;
echo 'webmaster ALL=(ALL) TYPE=webadm_t ROLE=webadm_r ALL' > /etc/sudoers.d/webmaster
