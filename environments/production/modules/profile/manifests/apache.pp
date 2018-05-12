

class profile::apache(
    Boolean $default_vhost = false,
    Integer $port = 80,
    String $docroot = '/var/www/test',
) {
    class { '::apache':
	default_vhost => $default_vhost,
	}
    ::apache::vhost { 'pavan.alearn.net':
	port    => $port,
	docroot => $docroot,
	}
    }

