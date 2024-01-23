# /api/organization
resource "aws_route53_health_check" "api_health_check_lodestone_organization" {
  fqdn              = local.domain
  port              = local.port
  type              = local.type
  resource_path     = "/api/organization"
  failure_threshold = "3"

  tags = {
    Name = "hc-lodestone-organization"
  }
}

resource "aws_cloudwatch_metric_alarm" "api_alarm_lodestone_organization" {
  alarm_name                = "api-health-alarm-lodestone-organization"
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
    HealthCheckId = aws_route53_health_check.api_health_check_lodestone_organization.id
  }
}

# /api/organization/1
resource "aws_route53_health_check" "api_health_check_lodestone_organization_1" {
  fqdn              = local.domain
  port              = local.port
  type              = local.type
  resource_path     = "/api/organization/1"
  failure_threshold = "3"

  tags = {
    Name = "hc-lodestone-organization-1"
  }
}

resource "aws_cloudwatch_metric_alarm" "api_alarm_lodestone_organization_1" {
  alarm_name                = "api-health-alarm-lodestone-organization-1"
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
    HealthCheckId = aws_route53_health_check.api_health_check_lodestone_organization_1.id
  }
}

# /api/organization/roles
resource "aws_route53_health_check" "api_health_check_lodestone_organization_roles" {
  fqdn              = local.domain
  port              = local.port
  type              = local.type
  resource_path     = "/api/organization/roles"
  failure_threshold = "3"

  tags = {
    Name = "hc-lodestone-organization-roles"
  }
}

resource "aws_cloudwatch_metric_alarm" "api_alarm_lodestone_organization_roles" {
  alarm_name                = "api-health-alarm-lodestone-organization-roles"
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
    HealthCheckId = aws_route53_health_check.api_health_check_lodestone_organization_roles.id
  }
}

# /api/organization/regions
resource "aws_route53_health_check" "api_health_check_lodestone_organization_regions" {
  fqdn              = local.domain
  port              = local.port
  type              = local.type
  resource_path     = "/api/organization/regions"
  failure_threshold = "3"

  tags = {
    Name = "hc-lodestone-organization-regions"
  }
}

resource "aws_cloudwatch_metric_alarm" "api_alarm_lodestone_organization_regions" {
  alarm_name                = "api-health-alarm-lodestone-organization-regions"
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
    HealthCheckId = aws_route53_health_check.api_health_check_lodestone_organization_regions.id
  }
}
