Vagrant.configure(2) do |config|

  config.vm.box         = 'ubuntu/trusty64'
  config.vm.box_version = '= 20151126'

  config.vm.network 'private_network', ip: '6.6.6.7'

  config.vm.network 'public_network', bridge: 'en0: Wi-Fi (AirPort)'

  config.vm.provider 'virtualbox' do |vb|
    vb.gui    = false
    vb.memory = '512'
    vb.name   = 'mysql'
  end

  config.berkshelf.enabled = true

  config.vm.provision 'docker'

  config.vm.provision 'chef_solo' do |chef|
    chef.add_recipe 'setup::add_swapfile'
    chef.add_recipe 'setup::initialize'
    chef.add_recipe 'cook_mysql'
  end
end
