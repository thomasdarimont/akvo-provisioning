
class homepage::install inherits homepage::params {

    php::app { 'homepage':
        app_hostnames        => $homepage_hostnames,
        group                => 'www-edit',
        pool_port            => $pool_port,
        config_file_contents => template('homepage/homepage-nginx.conf.erb'),
        deploy_key           => hiera('homepage-deploy_public_key')
    }

    file { ["${appdir}/versions", "${appdir}/conf", "${appdir}/uploads"]:
        ensure  => directory,
        owner   => 'homepage',
        group   => 'homepage',
        mode    => '0775',
        require => File[$appdir]
    }

    file { "${appdir}/make_version.sh":
        ensure  => present,
        owner   => 'homepage',
        group   => 'homepage',
        mode    => '0544',
        content => template('homepage/make_version.sh.erb'),
        require => File[$appdir]
    }

    if hiera('homepage_leech') {
        class { 'homepage::leech': }
    }

    if hiera('homepage_data_source') {
        class { 'homepage::datasource': }
    }

}