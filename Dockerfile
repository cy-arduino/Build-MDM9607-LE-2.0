# Build MDM9607 LE 2.0

# usage:
# Use your own env and permission
#    docker run -it --name build_mdm9607_le-2.0 -v /home/$(whoami):/home/$(whoami) chihyinglin/build-mdm9607-le-2.0 /bin/bash -c "sudo useradd -s /bin/bash -p '' -G sudo $(whoami) && cd /home/$(whoami) && su $(whoami) && /bin/bash"

From ubuntu:14.04

LABEL maintainer="chihying.phone@gmail.com"
LABEL version="0.2"
LABEL description="Build MDM9607 LE 2.0"

# Install required packages
RUN apt-get update && apt-get install -y --no-install-recommends ssh vim build-essential chrpath coreutils cvs desktop-file-utils diffstat docbook-utils fakeroot g++ gawk gcc git git-core help2man libgmp3-dev libmpfr-dev libreadline6-dev libtool libxml2-dev make python-pip python-pysqlite2 quilt sed subversion texi2html texinfo unzip wget

RUN rm -rf /var/lib/apt/lists/*

# Use bash as default shell
RUN sudo rm -rf /bin/sh &&  sudo ln -s /bin/bash /bin/sh

# run default command
#CMD ["/bin/bash", "-c", "/root/data/run.sh"]
