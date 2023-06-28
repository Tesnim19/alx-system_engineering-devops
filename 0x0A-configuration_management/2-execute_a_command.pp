#kill menow

exec { 'killmenow':
  command     => 'pkill killmenow',
  path        => ['/usr/bin', '/bin'],
  onlyif      => 'pgrep killmenow',
  refreshonly => true,
}

