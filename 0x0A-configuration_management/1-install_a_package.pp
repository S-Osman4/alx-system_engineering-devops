# Install a package

file {'puppet-lint':
  ensure   => '2.1.0',
  provider => 'gem'
}
