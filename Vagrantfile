Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/lunar64"
  config.vm.network "private_network", type: "dhcp"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
    vb.cpus = 2
  end
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible-playbook.yml"
  end
  config.vm.synced_folder "syncd/", "/syncd"
  config.ssh.extra_args = ["-t", "cd /syncd; bash --login"]
end
