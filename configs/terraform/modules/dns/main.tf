resource "aws_route53_health_check" "api" { fqdn = "api.example.com" type = "HTTPS" resource_path = "/health" failure_threshold = 3 request_interval = 30 }
