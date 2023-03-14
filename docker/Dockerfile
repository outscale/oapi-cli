FROM centos:7

RUN yum search epel-release
RUN yum info epel-release
RUN yum install -y  epel-release wget
RUN yum update -y

RUN yum install -y git autoconf automake make cmake3 json-c-devel centos-release-scl-rh libnghttp2 libpsl libtool  pkgconfig fuse-devel file cargo libcurl-devel
RUN yum install -y devtoolset-11-gcc-c++
RUN ln -s /usr/bin/cmake3 /usr/bin/cmake

RUN yum clean all