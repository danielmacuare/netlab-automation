Vagrant.configure("2") do |config|
config.vm.define "leaf01" do |leaf01|
leaf01.vm.box = "CumulusCommunity/cumulus-vx"
# Internal network for swp* interfaces.
    #leaf01.vm.network "private_network", virtualbox__intnet: "", auto_config: false
    leaf01.vm.network "private_network", virtualbox__intnet: "PP11", auto_config: false 
    leaf01.vm.network "private_network", virtualbox__intnet: "PP21", auto_config: false
    leaf01.vm.provider "virtualbox" do |vbox|
        vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc3', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc4', 'allow-vms']
    end    
end
config.vm.define "leaf02" do |leaf02|
    leaf02.vm.box = "CumulusCommunity/cumulus-vx"
    # Internal network for swp* interfaces.
    #leaf02.vm.network "private_network", virtualbox__intnet: "", auto_config: false
    leaf02.vm.network "private_network", virtualbox__intnet: "PP12", auto_config: false
    leaf02.vm.network "private_network", virtualbox__intnet: "PP22", auto_config: false
    leaf02.vm.provider "virtualbox" do |vbox|
        vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc3', 'allow-vms']
        #vbox.customize ['modifyvm', :id, '--nicpromisc4', 'allow-vms']
    end    
end
config.vm.define "spine01" do |spine01|
    spine01.vm.box = "CumulusCommunity/cumulus-vx"
    # Internal network for swp* interfaces.
    spine01.vm.network "private_network", virtualbox__intnet: "PP11", auto_config: false
    spine01.vm.network "private_network", virtualbox__intnet: "PP12", auto_config: false
    spine01.vm.provider "virtualbox" do |vbox|
        vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc3', 'allow-vms']
    end
end    
config.vm.define "spine02" do |spine02|
    spine02.vm.box = "CumulusCommunity/cumulus-vx"
    # Internal network for swp* interfaces.
    spine02.vm.network "private_network", virtualbox__intnet: "PP21", auto_config: false
    spine02.vm.network "private_network", virtualbox__intnet: "PP22", auto_config: false
    spine02.vm.provider "virtualbox" do |vbox|
        vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc3', 'allow-vms']
    end
end    
end
