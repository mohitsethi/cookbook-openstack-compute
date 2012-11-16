maintainer       "Opscode, Inc."
maintainer_email "matt@opscode.com"
license          "Apache 2.0"
description      "The OpenStack Compute service Nova."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "5.0.0"
name             "nova"

recipe		  "api-ec2", ""
recipe		  "api-metadata", ""
recipe		  "api-os-compute", ""
recipe		  "api-os-volume", ""
recipe		  "compute", ""
recipe		  "default", ""
recipe		  "libvirt", ""
recipe		  "network", ""
recipe		  "nova-common", ""
recipe		  "nova-setup", ""
recipe		  "scheduler", ""
recipe		  "vncproxy", ""
recipe		  "volume", ""

%w{ ubuntu fedora redhat centos }.each do |os|
  supports os
end

depends     "apt"
depends     "database"
depends     "glance"
depends     "keystone"
depends     "mysql"
depends     "openstack-utils"
depends     "openstack-common"
depends     "openssh"
depends     "osops-utils"
depends     "rabbitmq"
depends     "selinux"
depends     "sysctl"
depends     "yum"
