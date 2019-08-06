Vagrant.configure("2") do |config|

  (1..3).each do |i|
    config.vm.define "host0#{i}" do |host|
      host.vm.box = "centos/7"
      host.vm.network "public_network", bridge: "eth0"
      host.vm.network "private_network", ip: "192.168.10.#{i+2}"
      (1..7).each do |i|
        host.vm.provision "shell", inline: <<-SHELL
          sed -i '$ a 192.168.10.#{i+2} host0#{i}' /etc/hosts
        SHELL
      end
    end
    config.vm.define "host04" do |host|
      host.vm.box = "ubuntu/trusty64"
      host.vm.network "public_network", bridge: "eth0"
      host.vm.network "private_network", ip: "192.168.10.6"
      (1..7).each do |i|
        host.vm.provision "shell", inline: <<-SHELL
          sed -i '$ a 192.168.10.#{i+2} host0#{i}' /etc/hosts
        SHELL
      end
    end
  end
end
