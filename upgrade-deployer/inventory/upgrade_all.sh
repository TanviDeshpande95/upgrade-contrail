cp inventory/CentOS-7.5.repo /etc/yum.repos.d/
sed -i 's/enabled=1/enabled=0/g' /etc/yum.repos.d/contrail-install.repo
yum --releasever=7.5 --exclude=kernel* --disablerepo=contrail_install_repo -y update
yum install kernel-3.2.10-862

