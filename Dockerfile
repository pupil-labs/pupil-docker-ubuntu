FROM ubuntu:16.04
MAINTAINER Pupil Labs <info@pupil-labs.com>

WORKDIR /root

ADD . /root

RUN chmod -R +x scripts && sync &&\
	./scripts/apt_install.sh &&\
	./scripts/opencv_install.sh &&\
	./scripts/turbojpeg_install.sh &&\
	./scripts/libuvc_install.sh &&\
	./scripts/ceres_install.sh &&\
	./scripts/pip_install.sh

# TODO copy libusb binary to /lib/x86_64-linux-gnu/libusb-1.0.so.0

# this container does not do anything
# it will be used to execute bundle scripts via travis ci
CMD ["/bin/bash"]