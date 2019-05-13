Automating upgrading contrail services between different versions

1.Playbooks to install contrail via fab scripts
2.Playbooks to upgrade contrail vi fab scripts


Tested with:
CentOS 7.4-1708


Tools:
Ansible
Shell
Python


Installing Contrail

1. Download the version of contrail you want to install
   https://support.juniper.net/support/downloads/
2. Copy this to /tmp of the node you want to install contrail on 
3. Make sure testbed.py is populated correctly.
   cd /root/upgrade-contrail/upgrade-deployer/inventory
   vi testbed.py --> Edit this file
4. Run install_contrail.yml playbook
   cd /root/upgrade-contrail/upgrade-deployer
   ansible-playbook install_contrail.yml
    
