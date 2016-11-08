$ntp_conf=@(END)
#Managed by Puppet 
Server in.pool.ntp.org iburst prefer 
driftfile /var/lib/ntp/drift 
END

case $facts['os']['family'] {
    'Redhat': {
        $ntp_service='ntpd'
        $admingroup='wheel'
    }
    'Debian': {
        $ntp_service='ntp'
        $admingroup='sudo'
    }
    default :{
        fail("your $facts['os']['family'] is not supported ")
    }
     
}

package { 'ntp':
    ensure => installed,
    before => File['/etc/ntp.conf'],
}

File {
    owner => 'root',
    group => $admingroup,
    mode => '0664',
    ensure => 'file',
}

file { '/etc/ntp.conf':
    content => $ntp_conf,
    notify => Service['Ntp_Service'],
    
}

service { "Ntp_Service":
    ensure     => running,
    enable     => true,
    name       =>$ntp_service,
    subscribe  => File['/etc/ntp_conf'],
}