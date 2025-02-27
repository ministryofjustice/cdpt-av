FROM clamav/clamav:stable AS base

USER root

# permission juggling
RUN chown clamav:clamav /var/lib/clamav /var/log/clamav

# RUN mkdir /var/run/clamav && \
#     chown -R clamav:clamav /var/run/clamav /run/lock /var/lock && \
#     chmod -R 750 /var/run/clamav /run/lock /var/lock

# RUN echo "LogClean yes" >> /etc/clamav/clamd.conf

# volume provision
VOLUME ["/var/lib/clamav"]
VOLUME ["/var/log/clamav"]
VOLUME ["/run/clamav"]

# port provision
EXPOSE 3310

RUN usermod -u 1050 clamav && \
    groupmod -g 1050 clamav

USER 1050
