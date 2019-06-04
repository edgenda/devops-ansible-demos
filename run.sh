#!/bin/bash
ansible all -i vagrant.py -m ping
ansible all --become -i vagrant.py -m selinux -a "state=disabled"
ansible all --become -i vagrant.py -m user -a "name=student password=student1234 state=present create_home=True shell=/bin/bash"
ansible host03 --become -i vagrant.py -m yum -a "name=java-1.8.0-openjdk state=present"
ansible host04 --become -i vagrant.py -m yum -a "name=java-1.8.0-openjdk state=present"
ansible host05 --become -i vagrant.py -m yum -a "name=java-1.8.0-openjdk state=present"
ansible all --become -i vagrant.py -m shell "shutdown -r"
