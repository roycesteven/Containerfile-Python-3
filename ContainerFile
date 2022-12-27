FROM registry.access.redhat.com/ubi9:9.0.0-1640.1666621574
RUN dnf install wget yum-utils make gcc openssl-devel bzip2-devel libffi-devel zlib-devel python3 -y 
RUN wget https://www.python.org/ftp/python/3.10.8/Python-3.10.8.tgz 
RUN tar xzf /Python-3.10.8.tgz
RUN Python-3.10.8/configure --enable-optimizations 
RUN sh -c 'make altinstall'
