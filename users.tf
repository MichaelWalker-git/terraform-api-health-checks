
# /api/users/current
resource "aws_route53_health_check" "api_health_check_lodestone_users" {
  fqdn              = local.domain
  port              = local.port
  type              = local.type
  resource_path     = "/api/users/current"
  failure_threshold = "3"

  tags = {
    Name = "hc-lodestone-users"
  }
}

resource "aws_cloudwatch_metric_alarm" "api_alarm_lodestone_users" {
  alarm_name                = "api-health-alarm-lodestone-users"
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
    HealthCheckId = aws_route53_health_check.api_health_check_lodestone_users.id
  }
}


# /api/organization/{org_id}/users
resource "aws_route53_health_check" "api_health_check_lodestone_organization_1_users" {
  fqdn              = local.domain
  port              = local.port
  type              = local.type
  resource_path     = "/api/organization/1/users"
  failure_threshold = "3"

  tags = {
    Name = "hc-lodestone-organization-1-users"
  }
}

resource "aws_cloudwatch_metric_alarm" "api_alarm_lodestone_organization_1_users" {
  alarm_name                = "api-health-alarm-lodestone-organization-1-users"
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
    HealthCheckId = aws_route53_health_check.api_health_check_lodestone_organization_1_users.id
  }
}
