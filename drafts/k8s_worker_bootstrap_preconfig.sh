#!/bin/bash
sh /vagrant/ShellScripts/1_download-packages.sh
sh /vagrant/ShellScripts/2_configure_network.sh
sh /vagrant/ShellScripts/3-configure_firealld_selinux.sh
sh /vagrant/ShellScripts/4_config_crictl.sh