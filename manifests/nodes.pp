#------------------------------------------------------------------------------
# This node is inherited by all nodes:
#------------------------------------------------------------------------------

node 'base' {

    include motd
    include ntp
    include ssh
    include hosts
    include repos
    include puppet
}

#------------------------------------------------------------------------------
# Puppet masters:
#------------------------------------------------------------------------------

node /^puppet(\d+)/ inherits base {

    include r_puppet
}
