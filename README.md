# Vagrant+Ansible Fueled LAMP Stack

This is a template for LAMP-based projects using Vagrant and Ansible.

1. Install [Vagrant](http://www.vagrantup.com) and [VirtualBox](http://www.virtualbox.org/)
1. (Recommended on Windows) Install [GitHub for Windows](http://windows.github.org) to enable SSH access.
1. Open a terminal or command prompt and navigate to the directory containing the Vagrantfile.
1. Type `vagrant up` and grab a coffee or something. It might look like it freezes halfway though- this is because the Ansible playbook output does not show up in real time due to limitations in Vagrant. This step should take 5-15 minutes depending on the speed of your internet connection.
1. Once the box is up, open a web browser and navigate to [http://localhost:8080/site](http://localhost:8080/site)

You can put your files in the `site/` directory and refresh the page to see them in the browser. The playbook will also create a database called `webapp` with a user named `webapp` and password `webapp` so your app can access the database. Port 3306 is forwarded so you can use host DB tools as well. You can learn more and find further instructions by reading the [Vagrant documenation](http://docs.vagrantup.com) and the [Ansible documentation](http://docs.ansible.com).

Have fun!