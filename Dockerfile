FROM alpine:latest
MAINTAINER Philipp Hellmich <phil@hellmi.de>

# install wget
RUN apk add --update spamassassin wget tar ca-certificates openssl

# install dumb init
RUN wget -q https://github.com/Yelp/dumb-init/releases/download/v1.1.0/dumb-init_1.1.0_amd64 \
-O /usr/local/bin/dumb-init \
&& chmod +x /usr/local/bin/dumb-init

ADD run.sh /run.sh
RUN chmod +x /*.sh

# Define mountable directories.
VOLUME ["/var/spool/mail"]

# Server CMD
CMD ["dumb-init", "/run.sh"]

# Expose ports.
EXPOSE 783
