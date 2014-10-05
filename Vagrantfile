# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.vm.box = "chef/centos-6.5"

	# HTTP
	config.vm.network "forwarded_port", guest: 80, host: 8080
	# MySQL
	config.vm.network "forwarded_port", guest: 3306, host: 3306

	# Share the Ansible playbook for self-provisioning
	config.vm.synced_folder "ansible/", "/ansible/", owner: "root", group: "root", mount_options: ["dmode=755", "fmode=644"]
	# Share the site in a directory accessible to Apache
	config.vm.synced_folder "site/", "/var/www/html/site/", owner: "root", group: "root", mount_options: ["dmode=755", "fmode=644"]

	# Script which bootstraps Ansible
	config.vm.provision "shell", path: "vagrant/vagrant.sh"
end
