# /api/signals
resource "aws_route53_health_check" "api_health_check_lodestone_signals" {
  fqdn              = local.domain
  port              = local.port
  type              = local.type
  resource_path     = "/api/signals"
  failure_threshold = "3"

  tags = {
    Name = "hc-lodestone-signals"
  }
}

resource "aws_cloudwatch_metric_alarm" "api_alarm_lodestone_signals" {
  alarm_name                = "api-health-alarm-lodestone-signals"
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
    HealthCheckId = aws_route53_health_check.api_health_check_lodestone_signals.id
  }
}

# /api/organization/{org_id}/signals
resource "aws_route53_health_check" "api_health_check_lodestone_organization_1_signals" {
  fqdn              = local.domain
  port              = local.port
  type              = local.type
  resource_path     = "/api/organization/1/signals"
  failure_threshold = "3"

  tags = {
    Name = "hc-lodestone-organization-1-signals"
  }
}

resource "aws_cloudwatch_metric_alarm" "api_alarm_lodestone_organization_1_signals" {
  alarm_name                = "api-health-alarm-lodestone-organization-1-signals"
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
    HealthCheckId = aws_route53_health_check.api_health_check_lodestone_organization_1_signals.id
  }
}

# /api/signals/1
resource "aws_route53_health_check" "api_health_check_lodestone_signals_1" {
  fqdn              = local.domain
  port              = local.port
  type              = local.type
  resource_path     = "/api/signals/1"
  failure_threshold = "3"

  tags = {
    Name = "hc-lodestone-signals-1"
  }
}

resource "aws_cloudwatch_metric_alarm" "api_alarm_lodestone_signals_1" {
  alarm_name                = "api-health-alarm-lodestone-signals-1"
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
    HealthCheckId = aws_route53_health_check.api_health_check_lodestone_signals_1.id
  }
}

# /api/organization/{org_id}/signals/{signal_id}
resource "aws_route53_health_check" "api_health_check_lodestone_organization_1_signals_1" {
  fqdn              = local.domain
  port              = local.port
  type              = local.type
  resource_path     = "/api/organization/1/signals/1"
  failure_threshold = "3"

  tags = {
    Name = "hc-lodestone-organization-1-signals-1"
  }
}

resource "aws_cloudwatch_metric_alarm" "api_alarm_lodestone_organization_1_signals_1" {
  alarm_name                = "api-health-alarm-lodestone-organization-1-signals-1"
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
    HealthCheckId = aws_route53_health_check.api_health_check_lodestone_organization_1_signals_1.id
  }
}
