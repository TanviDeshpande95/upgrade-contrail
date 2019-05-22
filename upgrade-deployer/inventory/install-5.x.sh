yum install -y python-pip
yum -y install epel-release
pip install requests
cp inventory/instances.yaml /tmp/ansible1/config/
ansible-playbook -i /tmp/ansible1/inventory/ -e orchestrator=openstack /tmp/ansible1/playbooks/configure_instances.yml
ansible-playbook -i /tmp/ansible1/inventory/ /tmp/ansible1/playbooks/install_openstack.yml
ansible-playbook -i /tmp/ansible1/inventory/ -e orchestrator=openstack /tmp/ansible1/playbooks/install_contrail.yml
