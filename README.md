Automating upgrading contrail services between different versions

1.Playbooks to install contrail via fab scripts
2.Playbooks to upgrade contrail vi fab scripts


Tested with:
CentOS 7.4-1708
Upgrade between minor versions

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
  
 Upgrading Contrail
 
 1. Download and copy rpm of the new version to be installed to /tmp
 2. Run the upgrade_contrail playbook:
    ansible-playbook upgrade_contrail.yml -e version=<version upgrading from>
 3. Verify contrail-status at the end of the playbook to make sure all services are up.
    
