docker-puppet
=============

Docker image to run a Puppet server

Build the image
-----------------

`$ docker build -t docker-registry.simpledrupalcloud.com/puppet http://git.simpledrupalcloud.com/simpledrupalcloud/docker-puppet.git`

Push the image to private docker registry
-----------------------------------------

`$ docker push docker-registry.simpledrupalcloud.com/puppet`

Pull the image from the private docker registry
-----------------------------------------------

`$ docker pull docker-registry.simpledrupalcloud.com/puppet`

Run the container
-----------------

`$ docker run --name puppet -d docker-registry.simpledrupalcloud.com/puppet`