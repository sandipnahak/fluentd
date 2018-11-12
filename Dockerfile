FROM fluent/fluentd-kubernetes-daemonset:v1.2-debian-elasticsearch

USER root
WORKDIR /home/fluent

# Copy custom configuratoin
COPY ./entrypoint.sh /bin/entrypoint.sh
RUN chmod +x /bin/entrypoint.sh

CMD ["/fluentd/entrypoint.sh"]
