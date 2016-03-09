# Don't touch unless you know what you're doing!

Vagrant.configure(2) do |config|

  # Base Box
  # --------------------
  config.vm.box = "ubuntu/trusty64"

  # Optional (Remove if desired)
  config.vm.provider :virtualbox do |v|
    
    # The name that appears in the VirtualBox GUI
    # -----------------------------------
    v.name = "test_apache2"

    # How much RAM to give the VM (in MB)
    # -----------------------------------
    v.customize ["modifyvm", :id, "--memory", "2048"]

    # Comment the bottom two lines to disable muli-core in the VM
    v.customize ["modifyvm", :id, "--cpus", "2"]
    v.customize ["modifyvm", :id, "--ioapic", "on"]

  end
  
  # Connect to IP
  # Note: Use an IP that doesn't conflict with any OS's DHCP (Below is a safe bet)
  # --------------------
  config.vm.network :private_network, ip: "192.168.50.4"
  # config.vm.network :private_network, ip: "10.10.10.10"

  # Forward to Port
  # --------------------
  config.vm.network :forwarded_port, guest: 80, host: 8080
  # config.vm.network "forwarded_port", guest: 80, host: 8888

  # Synced Folder
  # --------------------
  config.vm.synced_folder ".", "/vagrant/", :mount_options => [ "dmode=777", "fmode=666" ], :owner => 'www-data', :group => 'www-data'

  # Provisioning Script
  # --------------------
  # inside VM
  config.vm.provision "shell", path: "ansible/provision.sh" 
  # outside VM
  # config.vm.provision "ansible" do |ansible|
  #   ansible.sudo = true
  #   ansible.playbook = "ansible/playbook.yml"
  #   ansible.verbose = "v"
  #   ansible.host_key_checking = false
  # end

end