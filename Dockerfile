FROM fluent/fluentd:v1.2.5

RUN gem install fluent-plugin-cloudwatch-logs fluent-plugin-elasticsearch

WORKDIR /code
COPY etc etc

ENV FLUENT_CONF='/code/etc/fluent.conf'