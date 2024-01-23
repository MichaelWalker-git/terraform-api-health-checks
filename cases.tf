
# /api/cases
resource "aws_route53_health_check" "api_health_check_lodestone_cases" {
  fqdn              = local.domain
  port              = local.port
  type              = local.type
  resource_path     = "/api/cases"
  failure_threshold = "3"

  tags = {
    Name = "hc-lodestone-cases"
  }
}

resource "aws_cloudwatch_metric_alarm" "api_alarm_lodestone_cases" {
  alarm_name                = "api-health-alarm-lodestone-cases"
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
    HealthCheckId = aws_route53_health_check.api_health_check_lodestone_cases.id
  }
}


# /api/cases/1
resource "aws_route53_health_check" "api_health_check_lodestone_cases_1" {
  fqdn              = local.domain
  port              = local.port
  type              = local.type
  resource_path     = "/api/cases/1"
  failure_threshold = "3"

  tags = {
    Name = "hc-lodestone-cases-1"
  }
}

resource "aws_cloudwatch_metric_alarm" "api_alarm_lodestone_cases_1" {
  alarm_name                = "api-health-alarm-lodestone-cases-1"
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
    HealthCheckId = aws_route53_health_check.api_health_check_lodestone_cases_1.id
  }
}
