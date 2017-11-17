#!/usr/bin/env ruby

Vagrant.configure(2) do |config|
  config.vm.box = 'ubuntu/xenial64'
  config.ssh.insert_key = true

  config.vm.provision 'shell', inline: <<-SHELL
    sudo apt-get update
    sudo apt-get install -y click
  SHELL
end
