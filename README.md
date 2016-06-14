# iapolinario/Docker-Full-Stack-CI:1.0.0

- [Introduction](#introduction)
    - [Changelog](Changelog.md)
- [Contributing](#contributing)
- [Issues](#issues)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [References](#references)

# Introduction

Dockerfile to build a full stack environment container image.

# Contributing

If you find this project useful here's how you can help:

- Send a Pull Request with your awesome new features and bug fixes
- Help new users with they may encounter
- Support the development of this project sharing in your social media or buying me a coffe/beer. :)

# Issues

Docker is a relatively new project and is active being developed and tested by a thriving community of developers and testers and every release of docker features many enhancements and bugfixes.

Given the nature of the development and release cycle it is very important that you have the latest version of docker installed because any issue that you encounter might have already been fixed with a newer docker release.

Install the most recent version of the Docker Engine for your platform using the [official Docker releases](http://docs.docker.com/engine/installation/), which can also be installed using:

```bash
wget -qO- https://get.docker.com/ | sh
```

Fedora and RHEL/CentOS users should try disabling selinux with `setenforce 0` and check if resolves the issue. If it does than there is not much that I can help you with. You can either stick with selinux disabled (not recommended by redhat) or switch to using ubuntu.

You may also set `DEBUG=true` to enable debugging of the entrypoint script, which could help you pin point any configuration issues.

In your issue report please make sure you provide the following information:

- The host distribution and release version.
- Output of the `docker version` command
- Output of the `docker info` command
- The `docker run` command you used to run the image (mask out the sensitive bits).

# Prerequisites

Your docker host needs to have 1GB or more of available RAM to run. 

# Installation

Automated builds of the image are available and is the recommended method of installation.

```bash
make dev
```
__NOTE__: Please allow a couple of minutes for the applications to start.

You should now have the applications up and ready for testing. If you want to use this project in production, tbe careful.

## Tools

| *Tool* | *Link* | *Credentials* |
| ------------- | ------------- | ------------- |
| Jenkins | http://${docker-machine ip default}:18080/ | no login required |
| Sonar | http://${docker-machine ip default}:19000/ | admin/admin |
| MySQL | http://${docker-machine ip default}:3306/ | admin/admin123 |
| GitLab | http://${docker-machine ip default}:10080/ | root/5iveL!fe |
| Postgres Gitlab | http://${docker-machine ip default}:5432 | gitlab/password |
| Postgres Sonar | http://${docker-machine ip default}:5433 | sonar/sonar |
| Redis| http://${docker-machine ip default}:6379 | no login required |
| Dockercraft| http://${docker-machine ip default}:25565 | no login required |


# References

* https://github.com/gitlabhq/gitlabhq
* https://github.com/gitlabhq/gitlabhq/blob/master/doc/install/installation.md
* https://github.com/sameersbn/docker-gitlab
