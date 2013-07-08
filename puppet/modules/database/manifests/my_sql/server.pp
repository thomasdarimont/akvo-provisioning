class database::my_sql::server {

    class { 'mysql::server':
        # for possible values in this hash, see
        # https://github.com/puppetlabs/puppetlabs-mysql/blob/master/manifests/config.pp#L5
        config_hash => {
            'root_password'  => 'foo',  # TODO: better password :)
            'bind_address'   => hiera('external_ip'),
            'character_set'  => 'utf8',
        }
    }

    # let everyone know where we are
    @@named::service_location { "mysql":
        ip => hiera('internal_ip')
    }

    # collect any databases that services want
    Database::My_sql::Db <<| |>>

}