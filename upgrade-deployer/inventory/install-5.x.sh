pip install requests
cp inventory/instances.yaml /tmp/ansible1/config/
ssh-keygen -f ~/.ssh/id_rsa -P ""
chmod u+x inventory/getInstanceIP.py
./getInstanceIP.py
for host in $(cat hosts.txt); do /usr/bin/sshpass -p "c0ntrail123" ssh-copy-id $host; done
#ansible-playbook -i /tmp/ansible1/inventory/ -e orchestrator=openstack /tmp/ansible1/playbooks/configure_instances.yml
#ansible-playbook -i /tmp/ansible1/inventory/ /tmp/ansible1/playbooks/install_openstack.yml
#ansible-playbook -i /tmp/ansible1/inventory/ -e orchestrator=openstack /tmp/ansible1/playbooks/install_contrail.yml >> install_contrai
