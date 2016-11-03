package { 'apache2':
    ensure => installed,
    
}

service { "apache2":
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    # pattern    => 'name',
}