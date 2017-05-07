# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "/Users/mnussbaum/src/vagrant-arch-builder/packer_outdir/packed/archlinux-virtualbox.box"

  config.vm.provider "virtualbox" do |vb|
    # vb.gui = true

    vb.memory = "4096"
  end

  config.vm.provision "shell", inline: "pacman -Syu --noconfirm wpa_supplicant ansible python python-passlib"

  config.vm.provision "ansible_local" do |ansible|
    ansible.raw_arguments  = [
      "--ask-become-pass",
      "-e root_device=/dev/mapper/vgcrypt-root",
      "-e ssd_device=/dev/sda2",
      "-e '{\"user\": {\"name\": \"vagrant\", \"group\": \"vagrant\", \"shell\": \"/usr/bin/zsh\", \"email\": \"foo@bar.com\"}}'",
    ]
    ansible.verbose = "v"
    ansible.playbook = "playbook.yml"
  end
end
