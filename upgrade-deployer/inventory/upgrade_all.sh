echo "[base-7.5]
name=CentOS-7.5 - Base
baseurl=http://vault.centos.org/centos/7.5.1804/os/$basearch/
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7

[updates-7.5]
name=CentOS-7.5 - Updates
baseurl=http://vault.centos.org/centos/7.5.1804/updates/$basearch/
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7" >> /etc/yum/repos.d/CentOS-7.5.repo
sed -i 's/enabled=1/enabled=0/g' /etc/yum/repos.d/contrail-install.repo
yum --releasever=7.5 --exclude=kernel* --disablerepo=contrail_install_repo update
yum install kernel-3.2.10-862

