#------------------------------------------------------------------------------
# puppet apply 00_mysql.pp --graph
#------------------------------------------------------------------------------

class { 'mysql':
    ensure  => running,
    version => present,
}

mysqldb { 'puppet': 
    ensure  => present,
    charset => 'latin1',
}
