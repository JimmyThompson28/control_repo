node default {
    file {'/root/README':
        ensure => file,
        content => 'This is a readme and now it works',
        owner   => 'root'
    }
}
