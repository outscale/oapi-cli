FROM rockylinux:8

RUN echo "assumeyes=1" >> /etc/yum.conf

RUN yum search epel-release
RUN yum info epel-release
RUN yum install -y  epel-release wget
RUN yum update -y

RUN yum install -y git autoconf automake make cmake json-c-devel libnghttp2 libpsl libtool  pkgconfig fuse-devel file cargo libcurl-devel

RUN yum clean all