# manifest.pp

include chocolatey

file { 'C:/puppet-demo/mydir':
  ensure => directory,
}

file { 'C:/puppet-demo/hello.txt':
  ensure  => file,
  content => "Hello Puppet!\n",
  require => File['C:/puppet-demo/mydir'],
}

package { 'apache-httpd':
  ensure   => installed,
  provider => chocolatey,
}
