$owner = 'root'
$group = 'root'
$mode  = '0644'
file { '/temp.txt':
    ensure => file,
    owner  => $owner,
    group  => $group,
    mode   => $mode,
    content => "This is from Puppet",
    
}

file { '/mydir':
    ensure => directory,
    owner  => $owner,
    group  => $group,
    mode   => $mode,
    
}