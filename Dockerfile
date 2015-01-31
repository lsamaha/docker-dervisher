FROM debian:wheezy
MAINTAINER lwsamaha

# users

RUN useradd -s /bin/bash dervisher

# tools

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive \  
    apt-get install -y \
    openjdk-7-jre-headless \
    python-pip \
    git-core
RUN pip install boto
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get clean autoclean && \
    apt-get autoremove

ENV kcldir /opt/amazon-kinesis-client-python

# dirs

RUN git clone https://github.com/awslabs/amazon-kinesis-client-python.git ${kcldir}
WORKDIR ${kcldir}
RUN python ${kcldir}/setup.py download_jars
RUN python ${kcldir}/setup.py install
ENV tmpdir ~/tmp

# dervish


