# Build MDM9607 LE 2.0

# usage:
#	cmd line
#		docker run -v [your code path]:/root/data chihyinglin/build_mdm9607_le:x.x [your cmd]
#	run /root/data/run.sh
#		docker run -v [your code path]:/root/data chihyinglin/build_mdm9607_le:x.x

From ubuntu:14.04

LABEL maintainer="chihying.phone@gmail.com"
LABEL version="0.1"
LABEL description="Build MDM9607 LE 2.0"

# Install required packages
RUN apt-get update && apt-get install -y --no-install-recommends build-essential chrpath coreutils cvs desktop-file-utils diffstat docbook-utils fakeroot g++ gawk gcc git git-core help2man libgmp3-dev libmpfr-dev libreadline6-dev libtool libxml2-dev make python-pip python-pysqlite2 quilt sed subversion texi2html texinfo unzip wget

RUN rm -rf /var/lib/apt/lists/*

# Use bash as default shell
RUN sudo rm -rf /bin/sh &&  sudo ln -s /bin/bash /bin/sh


# run command
CMD ["/bin/bash", "-c", "/root/data/run.sh"]
