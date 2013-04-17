#------------------------------------------------------------------------------
# This node is inherited by all nodes:
#------------------------------------------------------------------------------

node base {

    include r_base
}

#------------------------------------------------------------------------------
# Puppet masters:
#------------------------------------------------------------------------------

node /^puppet(\d+)/ inherits base {

    include r_puppet
}

#------------------------------------------------------------------------------
# KVM hosts:
#------------------------------------------------------------------------------

node /^kvm(\d+)/ inherits base {

    include r_kvm
}

#------------------------------------------------------------------------------
# Router:
#------------------------------------------------------------------------------

node /^router(\d+)/ inherits base {

    include r_router
}

#------------------------------------------------------------------------------
# Frontends:
#------------------------------------------------------------------------------

node /^frontend(\d+)/ inherits base {

    include r_frontend
}

#------------------------------------------------------------------------------
# Backends:
#------------------------------------------------------------------------------

node /^backend(\d+)/ inherits base {

    include r_backend
}
