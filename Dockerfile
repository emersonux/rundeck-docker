FROM rundeck/rundeck:SNAPSHOT
# Ansible
MAINTAINER emerson.souza.santos@accenture.com
RUN sudo apt update && \
 sudo apt install software-properties-common -y && \
 sudo apt install -y ansible \
                     inetutils-ping \
                     traceroute \
                     telnet \
                     vim
COPY ./files/ansible.cfg /home/rundeck/.ansible.cfg
RUN mkdir /home/rundeck/.ansible && \
          touch /home/rundeck/.ansible/ansible_hosts.ini
