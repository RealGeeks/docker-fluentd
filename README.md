# Fluentd/CloudWatch Collector Docker Image

This is a Docker image of Fluentd configured to collect logs from AWS
Cloudwatch.

# Usage

Configure via environment variables; all are required:

- `LOG_GROUP_NAME`
- `LOG_STREAM_NAME`
- `ELASTICSEARCH_HOST`
- `AWS_REGION`

## Authorization

Assumed to execute on an EC2 instance with an appropriate IAM policy, e.g.:

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "logs:*",
        "s3:GetObject"
      ],
      "Resource": [
        "arn:aws:logs:us-east-1:*:*",
        "arn:aws:s3:::*"
      ]
    }
  ]
}
```
