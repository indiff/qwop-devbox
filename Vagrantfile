Vagrant.configure("2") do |config|
    #config.vm.box = "ubuntu/bionic64"
	config.vm.box = "bionic64.box"
    config.vm.provision :shell, :path => "scripts/setup.sh"
	config.vm.network "public_network", ip: "192.168.1.119"
    config.vm.network :forwarded_port, host: 8081, guest: 8080
    config.vm.network :forwarded_port, host: 9001, guest: 9000
    config.ssh.insert_key = true
    config.vm.synced_folder '.', '/vagrant', disabled: true

    config.vm.provider :virtualbox do |vb|
        vb.gui = true
        # Use VBoxManage to customize the VM. For example to change memory:
        vb.customize ["modifyvm", :id, "--name", "qwop-devbox"]
        vb.customize ["modifyvm", :id, "--memory", "4096"]
        vb.customize ["modifyvm", :id, "--vram", 64]
        vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
        vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
        vb.customize ['modifyvm', :id, '--draganddrop', 'bidirectional']
    end
end
