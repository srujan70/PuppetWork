$owner = 'root'
$group = 'root'
$mode  = '0644'

file { '/temp.txt':
    ensure => file,
    owner  => $owner,
    group  => $group,
    mode   => $mode,
    content => "This is from Puppet \n The owner is ${owner} \n The group is ${group}",
    
}

file { '/mydir':
    ensure => directory,
    owner  => $owner,
    group  => $group,
    mode   => $mode,
    
}