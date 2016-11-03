file { '/temp.txt':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    content => 'Hi this is from puppet'
    }