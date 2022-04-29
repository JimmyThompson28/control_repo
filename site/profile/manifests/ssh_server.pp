class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDVndHB+tp2NSvNH6ONq15klK5UFVBI+8fMhQmzt2a1+OqHiBLLMHAipmv3cTvszdOKD+m7oykGXSgVV2Vj0uewO+B2WNn12SdY7v57/H0kNZQGjyc7cKEeAMiPkkDccY0calW6VfBorAV86P3bc0n/LGs2arf56UkHoUVkWTNwDh+8N8fzixRQZGj+JQeLfNwdDdVl8ZbC75tI224otwkqOrGzxB/FKBjVIJrHM8BkvLuXXtNZROQxmNR7EVm+1ls72GHk8E1jyX2mWEplAfAXSS7K2508cjggLwKj+LxbggnceYhpDFmlU0Qu0ujgA2S7MlhghTrVSwupW0EABOvV',
  }
}
