class javasupport::gae {

    $gae_version = '1.8.9'
    $gae_file = "appengine-java-sdk-${gae_version}.zip"
    $gae_sdk = "http://files.support.akvo-ops.org/${gae_file}"

    file { '/opt/gae':
        ensure => directory,
        owner => root,
        mode => '0755'
    }

    exec { 'install_gae_sdk':
        command => "/usr/bin/wget ${gae_sdk} && /usr/bin/unzip ${gae_file}",
        cwd     => '/opt/gae',
        creates => "/opt/gae/${gae_version}",
        require => File['/opt/gae']
    }

}