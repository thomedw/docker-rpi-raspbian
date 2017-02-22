FROM resin/rpi-raspbian:jessie

#ENV QEMU_EXECVE 1

COPY . /usr/bin

RUN [ "/usr/bin/proot-x86_64", "-r", "/", "-q", "qemu-arm-static", "/bin/sh", "-c", "ln -s resin-xbuild /usr/bin/cross-build-start; ln -s resin-xbuild /usr/bin/cross-build-end; ln /bin/sh /bin/sh.real" ]
