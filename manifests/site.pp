node default {
  file {'/root/README':
    ensure => file,
    content => 'Puppet exercise\n',
    owner => 'root',
  }
}
node 'puppetmaster' {
  include role::master_server
}

