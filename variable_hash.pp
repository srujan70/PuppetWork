$user = {
    'username' => 'bob',
    'uid'      => '2011',
}

$file_details ={
    'path' => '/tmp/test.txt',
    'owner'=> 'root',
    'mode' => '0644',
    'content' => 'testing',
    }

 file { $file_details['path']:
     ensure => file,
     owner  => $file_details['owner'],
     group  => root,
     mode   => $file_details['mode'],
     content => $file_details['content'],
 }   