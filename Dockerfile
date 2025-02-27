FROM clamav/clamav:stable AS base

USER root

# permission juggling
# RUN chown clamav:clamav /var/lib/clamav /var/log/clamav

# RUN mkdir /var/run/clamav && \
#     chown -R clamav:clamav /var/run/clamav /run/lock /var/lock && \
#     chmod -R 750 /var/run/clamav /run/lock /var/lock

# RUN echo "LogClean yes" >> /etc/clamav/clamd.conf

# volume provision
VOLUME ["/var/lib/clamav"]
VOLUME ["/var/log/clamav"]

# port provision
EXPOSE 3310

USER 100
