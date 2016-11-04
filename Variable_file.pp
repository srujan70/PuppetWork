$owner = 'root'
$group = 'root'
$mode  = '0644'
$filecontent = "This is from Puppet \n The owner is ${owner} \n The group is ${group} \n"

file { '/temp.txt':
    ensure => file,
    owner  => $owner,
    group  => $group,
    mode   => $mode,
    content => $filecontent,
    
}

file { '/mydir':
    ensure => directory,
    owner  => $owner,
    group  => $group,
    mode   => $mode,
    
}
notify { '$filecontent': } 
