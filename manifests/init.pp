class Puppetslaves {
	
	package {'puppet':
		ensure => installed,
	}
	
	file {'/etc/default/puppet':
		content => template ("Puppetslaves/puppet"),
		require => Package ['puppet'],
		notify => Service ['puppet'],
	}
	
	file { '/etc/puppet/puppet.conf':
		content => template ("puppetslaves/puppet.conf"),
                require => Package ['puppet'],
                notify => Service ['puppet'],
	}
	
	service {'puppet':
		ensure => running,
		enable => true,
		require => Package ['puppet'],
	}
}
