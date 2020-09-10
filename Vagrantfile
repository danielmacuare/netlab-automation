Vagrant.configure("2") do |config|
config.vm.define "leaf01" do |leaf01|
leaf01.vm.box = "CumulusCommunity/cumulus-vx"
    leaf01.vm.network "private_network", virtualbox__intnet: "PP11", auto_config: false  # spine01 <--> leaf01
    leaf01.vm.network "private_network", virtualbox__intnet: "PP21", auto_config: false  # spine02 <--> leaf01
    leaf01.vm.network :forwarded_port, guest: 22, host: 2201, id: "ssh"
    leaf01.vm.provider "virtualbox" do |vbox|
        vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc3', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc4', 'allow-vms']
    end    
end
config.vm.define "leaf02" do |leaf02|
    leaf02.vm.box = "CumulusCommunity/cumulus-vx"
    leaf02.vm.network "private_network", virtualbox__intnet: "PP12", auto_config: false  # spine01 <--> leaf02
    leaf02.vm.network "private_network", virtualbox__intnet: "PP22", auto_config: false  # spine02 <--> leaf02
    leaf02.vm.network :forwarded_port, guest: 22, host: 2202, id: "ssh"
    leaf02.vm.provider "virtualbox" do |vbox|
        vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc3', 'allow-vms']
        #vbox.customize ['modifyvm', :id, '--nicpromisc4', 'allow-vms']
    end    
end
config.vm.define "leaf03" do |leaf03|
    leaf03.vm.box = "CumulusCommunity/cumulus-vx"
    leaf03.vm.network "private_network", virtualbox__intnet: "PP13", auto_config: false  # spine01 <--> leaf03
    leaf03.vm.network "private_network", virtualbox__intnet: "PP23", auto_config: false  # spine02 <--> leaf03
    leaf03.vm.network :forwarded_port, guest: 22, host: 2203, id: "ssh"
    leaf03.vm.provider "virtualbox" do |vbox|
        vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc3', 'allow-vms']
        #vbox.customize ['modifyvm', :id, '--nicpromisc4', 'allow-vms']
    end    
end
config.vm.define "leaf04" do |leaf04|
    leaf04.vm.box = "CumulusCommunity/cumulus-vx"
    leaf04.vm.network "private_network", virtualbox__intnet: "PP14", auto_config: false  # spine01 <--> leaf04
    leaf04.vm.network "private_network", virtualbox__intnet: "PP24", auto_config: false  # spine02 <--> leaf04 
    leaf04.vm.network :forwarded_port, guest: 22, host: 2204, id: "ssh"
    leaf04.vm.provider "virtualbox" do |vbox|
        vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc3', 'allow-vms']
        #vbox.customize ['modifyvm', :id, '--nicpromisc4', 'allow-vms']
    end    
end
config.vm.define "spine01" do |spine01|
    spine01.vm.box = "CumulusCommunity/cumulus-vx"
    spine01.vm.network "private_network", virtualbox__intnet: "PP11", auto_config: false  # spine01 <--> leaf01
    spine01.vm.network "private_network", virtualbox__intnet: "PP12", auto_config: false  # spine01 <--> leaf02
    spine01.vm.network "private_network", virtualbox__intnet: "PP13", auto_config: false  # spine01 <--> leaf03
    spine01.vm.network "private_network", virtualbox__intnet: "PP14", auto_config: false  # spine01 <--> leaf04
    spine01.vm.network :forwarded_port, guest: 22, host: 2101, id: "ssh"
    spine01.vm.provider "virtualbox" do |vbox|
        vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc3', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc4', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc5', 'allow-vms']
    end
end    
config.vm.define "spine02" do |spine02|
    spine02.vm.box = "CumulusCommunity/cumulus-vx"
    spine02.vm.network "private_network", virtualbox__intnet: "PP21", auto_config: false  # spine02 <--> leaf01
    spine02.vm.network "private_network", virtualbox__intnet: "PP22", auto_config: false  # spine02 <--> leaf02
    spine02.vm.network "private_network", virtualbox__intnet: "PP23", auto_config: false  # spine02 <--> leaf03 
    spine02.vm.network "private_network", virtualbox__intnet: "PP24", auto_config: false  # spine02 <--> leaf04
    spine02.vm.provider "virtualbox" do |vbox|
    spine02.vm.network :forwarded_port, guest: 22, host: 2102, id: "ssh"
        vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc3', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc4', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc5', 'allow-vms']
    end
end    

config.vm.define "server1" do |server1|
    server1.vm.box = "generic/ubuntu18.04"
    server1.vm.hostname = "server-01"
    server1.vm.network "private_network", virtualbox__intnet: "PP101", auto_config: false  # leaf01 <--> server1
    server1.vm.network "private_network", virtualbox__intnet: "PP22", auto_config: false  # leaf02 <--> server1
    server1.vm.provider "virtualbox" do |vbox|
    server1.vm.network :forwarded_port, guest: 22, host: 2102, id: "ssh"
        vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc3', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc4', 'allow-vms']
        vbox.customize ["modifyvm", :id, "--nic2", "natnetwork", "--nat-network2", "test", "--nictype2", "virtio"]
    end
end    
end
