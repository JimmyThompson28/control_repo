class profile::ssh {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => true',
  }
  ssh-authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC71Y/0r004WmBLxK1Ctnwh0XtRwDZiNWLQi6xdAftoSILHz5ftafoqIzPcydm+89U/Tpc4nQqcUAHNCLUX6o1SSDSACMmA5bD849rdSvYZh//dV2yR0H+0MF3tFQbXe6r2O3/BCN2ndip7b0KqlYemj1UE8itU6U/e1cY+tcA7liIG55Cy79clwS+gcfydcKPGOOreDDxFHRqLoc777AWkuRmI4+OdOUeW2Ha2c+UdKNStwnE11yuDIeMnDqL6hJADtkXwbjBcv0f+fCgU3JYMWaBD21FgTEFfuAldaUNR+UlRw4DdLsc7ZjUK9g4qnuiijwXikJgLcqldquvLkS4b',
  }
}
