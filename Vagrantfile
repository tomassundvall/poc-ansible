# -*- mode: ruby -*-
# vi: set ft=ruby

Vagrant.configure("2") do |config|
    
    # configure the boxes
    config.vm.box = "v0rtex/xenial64"

    config.vm.define 'n1' do |n1|
        n1.vm.hostname = "n1"
        n1.vm.network "private_network", ip: "172.20.20.10"
    end

    #
    ## Ansible controller VM which provisions the other VMs
    #
    config.vm.define "controller" do |controller|
        controller.vm.hostname = "controller"
        controller.vm.network "private_network", ip: "172.20.20.99"
        controller.vm.provision "shell", privileged: false, path: "install_ansible.sh"
        controller.vm.provision "shell", inline: <<-SHELL
            sudo mkdir /etc/ansible
            sudo cp /vagrant/hosts /etc/ansible/
        SHELL
        controller.ssh.insert_key = false
    end
end
