# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	# All Vagrant configuration is done here. The most common configuration
	# options are documented and commented below. For a complete reference,
	# please see the online documentation at vagrantup.com.

	config.vm.define :ks00 do |ks00_config|
		#ks00_config.vm.box = "chef/centos-5.10"
		#ks00_config.vm.box = "/data/virtualMachines/vagrant/boxes/centos-5.10-x86_64.box"
		ks00_config.vm.box = "puppetlabs/centos-5.10-64-puppet"
		ks00_config.vm.hostname = "ks00"
		#ks00_config.vm.forward_port 80, 8000

		config.vm.provider :virtualbox do |vb|
			vb.customize ["modifyvm", :id, "--memory", "512"]
			vb.customize ["modifyvm", :id, "--cpus", "1"]
		end

		ks00_config.vm.network :private_network, ip: "10.1.1.2"

	end



	config.vm.define :ks01 do |ks01_config|
        	#ks01_config.vm.box = "chef/centos-5.10"
                #ks01_config.vm.box = "/data/virtualMachines/vagrant/boxes/centos-5.10-x86_64.box"
                ks01_config.vm.box = "puppetlabs/centos-5.10-64-puppet"
                ks01_config.vm.hostname = "ks01"
                #ks01_config.vm.forward_port 80, 8000

                config.vm.provider :virtualbox do |vb|
                        vb.customize ["modifyvm", :id, "--memory", "512"]
                        vb.customize ["modifyvm", :id, "--cpus", "1"]
                end

                ks01_config.vm.network :private_network, ip: "10.1.1.11"
                #config.vm.provision :shell, :inline => "echo Hello, World"
        end

	config.vm.provision "puppet" do |puppet|
		puppet.manifests_path = "../puppet/manifests"
		puppet.manifest_file  = "site.pp"
		puppet.module_path = "../puppet/modules"
	end

end
