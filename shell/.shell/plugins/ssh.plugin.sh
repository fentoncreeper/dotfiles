#!/bin/bash
# ssh.plugin.sh
# sej 2016 03 15


function add_ssh() {
  about 'add entry to ssh config'
  param '1: host'
  param '2: hostname'
  param '3: user'
  group 'ssh'

  echo -en "\n\nHost $1\n  HostName $2\n  User $3\n  ServerAliveInterval 30\n  ServerAliveCountMax 120" >> ~/.ssh/config
}

function sshlist() {
  about 'list hosts defined in ssh config'
  group 'ssh'

  awk '$1 ~ /Host$/ { print $2 }' ~/.ssh/config
}
