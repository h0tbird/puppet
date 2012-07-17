#------------------------------------------------------------------------------
# This node is inherited by all nodes:
#------------------------------------------------------------------------------

node 'base' {

    # Stage: pre
    class { 'hosts': stage => pre } ->
    class { 'repos': stage => pre }

    # Stage: main
    class {
        'motd':;
        'ntp':;
        'ssh':;
        'puppet::client':;
    }
}

#------------------------------------------------------------------------------
# Puppet masters:
#------------------------------------------------------------------------------

node /^puppet(\d+)/ inherits base {

    include r_puppet
}
