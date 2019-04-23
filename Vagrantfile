Vagrant.configure("2") do |config|

  (3..5).each do |i|
    config.vm.define "host0#{i}" do |host|
      host.vm.box = "centos/7"
      host.vm.network "public_network", bridge: "eth0"
      host.vm.network "private_network", ip: "192.168.10.#{i}"
      (3..7).each do |i|
        host.vm.provision "shell", inline: <<-SHELL
          sed -i '$ a 192.168.10.#{i} host0#{i}' /etc/hosts
        SHELL
      end
    end
  end
end
