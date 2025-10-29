# manifest.pp - Puppet manifest for Bolt on Windows

# Include chocolatey class (module must be installed in modulepath)
include chocolatey

# Ensure directory exists
file { 'C:/puppet-demo/mydir':
  ensure => directory,
}

# Create hello.txt with content
file { 'C:/puppet-demo/hello.txt':
  ensure  => file,
  content => "Hello Puppet!\n",
  require => File['C:/puppet-demo/mydir'],
}

# Install Apache HTTP Server via Chocolatey
package { 'apache-httpd':
  ensure   => installed,
  provider => chocolatey,
  require  => Class['chocolatey'],
}
