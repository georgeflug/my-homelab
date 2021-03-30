# georgeflug/jenkins

This docker image contains a jenkins instance with pre-configured
settings. The intent is for all job tasks to be run with docker. Since
this Jenkins instance is itself inside a Docker container, extra
configuration is needed for agents to run docker tasks. Instead of using
docker-in-docker, this connects to the host's docker service by binding
to /var/run/docker.sock

The following plugins come pre-installed:
- Docker
- BlueOcean

To use this, you must provide an environment variable to the container
to tell the container the group id of the host's docker group. This
allows the container to set its own docker group to the same id which
allows it to have access to the host's docker service.
