output "health_check_id" {
  description = "The ID of the Route 53 health check"
  value       = aws_route53_health_check.api_health_check_lodestone.id
}

output "sns_topic_arn" {
  description = "The ARN of the SNS topic for alarm notifications"
  value       = aws_sns_topic.api_status_alarm_topic.arn
}
