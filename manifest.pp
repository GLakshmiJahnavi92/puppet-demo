# manifest.pp - simple Puppet manifest for Bolt on Windows

# Ensure directory exists
file { 'C:/puppet-demo/mydir':
  ensure => directory,
}

# Create file with content
file { 'C:/puppet-demo/hello.txt':
  ensure  => file,
  content => "Hello Puppet!\n",
  require => File['C:/puppet-demo/mydir'],
}
