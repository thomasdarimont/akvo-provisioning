# This class pulls together the parts which are required by both installed
# and development versions of RSR

class rsr::common {

    # some shared config
    $database_password = 'lake'
    $base_domain = hiera('base_domain')
    $database_host = "mysql.${base_domain}"
    $media_root = "/var/akvo/rsr/current/git/akvo/mediaroot/"
    $logdir = "/var/akvo/rsr/logs/"
    $port = 8000


    # make sure we also include the Akvoapp stuff, and that it is loaded
    # before this module
    require akvoapp


    # include our RSR-specific akvo info
    akvoapp::app { 'rsr': } # no parameters yet
    akvoapp::djangoapp { 'rsr': }


    # install all of the support packages
    include akvoapp::pythonsupport::mysql
    include akvoapp::pythonsupport::pil
    include akvoapp::pythonsupport::lxml


    # create an RSR database on the database server
    @@database::my_sql::db { 'rsr':
        password => $database_password
    }


    # we want a service address
    # TODO: this needs to consider partnersite stuff
    @@named::service_location { "rsr":
        ip => hiera('external_ip')
    }


    # nginx sits in front of RSR
    nginx::proxy { 'rsr':
        server_name        => "rsr.${base_domain}",
        proxy_url          => "http://localhost:${port}",
        password_protected => false,
    }


    # configure a service so we can start and restart RSR
    include supervisord
    supervisord::service { "rsr":
        user      => 'rsr',
        command   => "/var/akvo/rsr/venv/bin/gunicorn akvo.wsgi --pythonpath /var/akvo/rsr/git/current/ --pid /var/akvo/rsr/rsr.pid --bind 127.0.0.1:${port}",
        directory => "/var/akvo/rsr/",
    }
    # we want the rsr user to be able to restart the process
    sudo::service_control { "rsr":
        user         => 'rsr',
    }

}