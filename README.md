# Fluentd/CloudWatch Collector Docker Image

This is a Docker image of Fluentd configured to collect logs from AWS
Cloudwatch.

Configure via environment variables; all are required:

- `LOG_GROUP_NAME`
- `LOG_STREAM_NAME`
- `ELASTICSEARCH_HOST`
- `AWS_REGION`
