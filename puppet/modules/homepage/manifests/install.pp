
class homepage::install inherits homepage::params {

    package { 'php5-curl':
        ensure => installed
    }

    php::app { 'homepage':
        app_hostnames        => $homepage_hostnames,
        group                => 'www-edit',
        pool_port            => $pool_port,
        config_file_contents => template('homepage/homepage-nginx.conf.erb'),
        deploy_key           => hiera('homepage-deploy_public_key')
    }

    file { ["${appdir}/versions", "${appdir}/conf", "${appdir}/uploads", "${appdir}/data"]:
        ensure  => directory,
        owner   => $username,
        group   => $username,
        mode    => '0775',
        require => File[$appdir]
    }

    file { "${appdir}/make_version.sh":
        ensure  => present,
        owner   => $username,
        group   => $username,
        mode    => '0744',
        content => template('homepage/make_version.sh.erb'),
        require => File[$appdir]
    }

    # include the script for cleaning up old versions
    file { "${appdir}/cleanup_old.sh":
        ensure  => present,
        owner   => $username,
        group   => $username,
        mode    => '0744',
        content => template('homepage/cleanup_old.sh.erb'),
        require => File[$appdir]
    }

    # include additional configuration / rewrites for W3 Total Cache plugin
    file { "${appdir}/conf/nginx-w3tc.conf":
        ensure  => present,
        owner   => $username,
        group   => $username,
        mode    => '0744',
        source  => 'puppet:///modules/homepage/nginx-w3tc.conf',
        require => File[$appdir]
    }


    if hiera('homepage_leech') {
        class { 'homepage::leech': }
    }

    if hiera('homepage_data_source') {
        class { 'homepage::datasource': }
    }

}
