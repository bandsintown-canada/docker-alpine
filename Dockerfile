#
# Base Alpine Linux image
#

FROM gliderlabs/alpine:3.4
MAINTAINER Devops Team <devops@bandsintown.com>

# Install root filesystem
ADD ./rootfs /

# Install base packages
RUN apk update && apk upgrade && \
    apk-install curl wget bash tree && \
    echo -ne "Alpine Linux 3.4 image. (`uname -rsv`)\n" >> /root/.built

# Define bash as default command
CMD ["/bin/bash"]
