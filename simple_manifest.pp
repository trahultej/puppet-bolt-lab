file { 'C:/puppet_demo_dir':
  ensure => 'directory',
}

file { 'C:/puppet_demo_dir/hello.txt':
  ensure  => 'file',
  content => "Hello Puppet!\n",
  require => File['C:/puppet_demo_dir'],
}

# Package resource (Windows needs source or Chocolatey)
# package { 'git':
#   ensure => installed,
# }
