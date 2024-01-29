# global variables for API
resource "aws_route53_health_check" "api_health_check_lodestone" {
  fqdn                 = var.domain
  port                 = var.port
  type                 = var.type
  resource_path        = var.resource_path
  failure_threshold    = var.failure_threshold
  invert_healthcheck   = true  # Enable retry logic by inverting the status

  tags = var.tags
}

resource "aws_sns_topic" "api_status_alarm_topic" {
  name = "api-status-alarm-topic-${replace(var.domain, ".", "-")}"
  tags = var.tags
}

resource "aws_cloudwatch_metric_alarm" "api_alarm" {
  alarm_name          = "api-health-alarm-${replace(var.domain, ".", "-")}"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = 2
  metric_name         = "HealthCheckStatus"
  namespace           = "AWS/Route53"
  period              = 60
  statistic           = "Minimum"
  threshold           = 1
  alarm_description   = "Alarm when API health check fails"
  actions_enabled     = true
  alarm_actions       = [aws_sns_topic.api_status_alarm_topic.arn]

  dimensions = {
    HealthCheckId = aws_route53_health_check.api_health_check_lodestone.id
  }

  tags = var.tags
}
