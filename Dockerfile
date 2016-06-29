FROM mklbtz/ruby-oce-uncompiled
MAINTAINER Michael Bates <mklbtz@gmail.com>

RUN set -ex && \
    cd oce/build && \
    make && \
    make install/strip && \
    cd ../.. && rm -rf oce
