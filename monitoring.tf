locals {
  domain = "service-delivery-platform-test.lodestone.com"
  port = 443
  type              = "HTTPS"
}

# /api
resource "aws_route53_health_check" "api_health_check_lodestone_api" {
  fqdn              = local.domain
  port              = local.port
  type              = local.type
  resource_path     = "/api"
  failure_threshold = "3"

  tags = {
    Name = "hc-lodestone-api"
  }
}

resource "aws_cloudwatch_metric_alarm" "api_alarm_lodestone_api" {
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
    HealthCheckId = aws_route53_health_check.api_health_check_lodestone_api.id
  }
}


# /api/organization
resource "aws_route53_health_check" "api_health_check_lodestone_api_organization" {
  fqdn              = local.domain
  port              = local.port
  type              = local.type
  resource_path     = "/api/organization"
  failure_threshold = "3"

  tags = {
    Name = "hc-lodestone-api-organization"
  }
}

resource "aws_cloudwatch_metric_alarm" "api_alarm_lodestone_api_organization" {
  alarm_name                = "api-health-alarm-lodestone-api-organization"
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
    HealthCheckId = aws_route53_health_check.api_health_check_lodestone_api_organization.id
  }
}

# /api/cases
resource "aws_route53_health_check" "api_health_check_lodestone_api_cases" {
  fqdn              = local.domain
  port              = local.port
  type              = local.type
  resource_path     = "/api/cases"
  failure_threshold = "3"

  tags = {
    Name = "hc-lodestone-api-cases"
  }
}

resource "aws_cloudwatch_metric_alarm" "api_alarm_lodestone_api_cases" {
  alarm_name                = "api-health-alarm-lodestone-api-cases"
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
    HealthCheckId = aws_route53_health_check.api_health_check_lodestone_api_cases.id
  }
}
