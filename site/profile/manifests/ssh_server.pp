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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC+HtgyKUBXSFOIZtQn6RZhXuLibuZa6ND8pb4OJUkj67YiuwoDRgMymOoDrQn95UVt2/EoU0wHCrrU8MoreJ6Z3UY86fZ05nwlXOECjj3FWMItkS7fyK8HLCkjNgbtiu8yYj8oSn/wkkd/BN+eSGDONorWL4xdwCNiPaGvQq2nNwClWtRH//S5l7Xps+GTRUhSNZnWWHbB/161TiY8Fa1CUgyPEw6ZzTRTLgEq/6j3KSWC+OO9VGkWdhsul59XggebK7luhuaO37RAFelvesVu6AsapaReVVrLDDBI8BW5sxTk8nALni1G1+N4sjRriE5fhfQBoY2a4hORLhaywcCp',
	}  
}
