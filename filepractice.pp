file { '/mydir':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
     }