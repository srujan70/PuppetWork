$filecontent = @(BEGIN)
  HI
  HOW
  ARE 
  YOU
BEGIN

file { '/tmp/heredoc.txt':
    ensure => file,
    owner  => root,
    group  => root,
    mode   => '0644',
    content => $filecontent,
}

$dynfilecontent = @("END")
#This is managed by puppet
File content is ${filecontent}
END