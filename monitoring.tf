resource "aws_route53_health_check" "api_health_check" {
  fqdn              = "api.yourdomain.com" # Replace with your domain
  port              = 80
  type              = "HTTP"
  resource_path     = "/health" # Replace with your health check path
  failure_threshold = "3"
}

resource "aws_cloudwatch_metric_alarm" "api_alarm" {
  alarm_name                = "api-health-alarm"
  comparison_operator       = "LessThanThreshold"
  evaluation_periods        = "2"
  metric_name               = "HealthCheckStatus"
  namespace                 = "AWS/Route53"
  period                    = "60"
  statistic                 = "Minimum"
  threshold                 = "1"
  alarm_description         = "Alarm when API health check fails"
  actions_enabled           = true

  dimensions = {
    HealthCheckId = aws_route53_health_check.api_health_check.id
  }
}
