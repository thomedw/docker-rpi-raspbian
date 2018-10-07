FROM resin/rpi-raspbian

ENV QEMU_EXECVE 1
COPY . /usr/bin
