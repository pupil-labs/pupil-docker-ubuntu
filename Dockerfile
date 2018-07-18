FROM ubuntu:18.04
MAINTAINER Pupil Labs <info@pupil-labs.com>

## for apt to be noninteractive
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

WORKDIR /root

ADD . /root

RUN chmod -R +x scripts && sync &&\
	./scripts/apt_install.sh &&\
	./scripts/turbojpeg_install.sh &&\
	./scripts/libuvc_install.sh &&\
	./scripts/pip_install.sh

# TODO copy libusb binary to /lib/x86_64-linux-gnu/libusb-1.0.so.0

# this container does not do anything
# it will be used to execute bundle scripts via travis ci
CMD ["/bin/bash"]