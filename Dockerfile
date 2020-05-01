FROM alpine:3.11

# Install CI tools
RUN apk add --no-cache ca-certificates krb5-libs libgcc libintl libssl1.1 \
    libstdc++ lttng-ust tzdata userspace-rcu zlib icu-libs \
    nodejs yarn bash curl git

RUN wget -q https://codecov.io/bash -O /usr/bin/codecov && chmod u+x /usr/bin/codecov

ENV LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8

# Install Java - for Sonar
RUN apk --no-cache add openjdk11 --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community

RUN rm -Rf /var/cache/apk
