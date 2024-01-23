# global variables for API
locals {
  domain = "service-delivery-platform-test.lodestone.com"
  port = 443
  type              = "HTTPS"
}

# /api
resource "aws_route53_health_check" "api_health_check_lodestone" {
  fqdn              = local.domain
  port              = local.port
  type              = local.type
  resource_path     = "/api"
  failure_threshold = "3"

  tags = {
    Name = "hc-lodestone-api"
  }
}

resource "aws_cloudwatch_metric_alarm" "api_alarm_lodestone" {
  alarm_name                = "api-health-alarm-lodestone-api"
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
    HealthCheckId = aws_route53_health_check.api_health_check_lodestone.id
  }
}


# /api/health
resource "aws_route53_health_check" "api_health_check_lodestone_health" {
  fqdn              = local.domain
  port              = local.port
  type              = local.type
  resource_path     = "/api/health"
  failure_threshold = "3"

  tags = {
    Name = "hc-lodestone-health"
  }
}

resource "aws_cloudwatch_metric_alarm" "api_alarm_lodestone_health" {
  alarm_name                = "api-health-alarm-lodestone-health"
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
    HealthCheckId = aws_route53_health_check.api_health_check_lodestone_health.id
  }
}

# /api/status
resource "aws_route53_health_check" "api_health_check_lodestone_status" {
  fqdn              = local.domain
  port              = local.port
  type              = local.type
  resource_path     = "/api/status"
  failure_threshold = "3"

  tags = {
    Name = "hc-lodestone-status"
  }
}

resource "aws_cloudwatch_metric_alarm" "api_alarm_lodestone_status" {
  alarm_name                = "api-health-alarm-lodestone-status"
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
    HealthCheckId = aws_route53_health_check.api_health_check_lodestone_status.id
  }
}
