docker-puppet
=============

Docker image with a pre-installed Puppet agent on Debian Wheezy

Build the Docker image by yourself
----------------------------------

    $ docker build -t docker-registry.simpledrupalcloud.com/puppet http://git.simpledrupalcloud.com/simpledrupalcloud/docker-puppet.git

Push the Docker image to private Docker registry
------------------------------------------------

    $ docker push docker-registry.simpledrupalcloud.com/puppet

Pull the pre-built Docker image from the private Docker registry
----------------------------------------------------------------

    $ docker pull docker-registry.simpledrupalcloud.com/puppet

Run the container
-----------------

    $ docker run --name puppet -d docker-registry.simpledrupalcloud.com/puppet

Stop the container
------------------

    $ docker stop puppet