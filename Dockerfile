FROM mklbtz/ruby-oce-uncompiled
MAINTAINER Michael Bates <mklbtz@gmail.com>

RUN set -ex && \
    make && \
    make install/strip && \
    cd ../.. && rm -rf oce
