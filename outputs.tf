output "ce_anomaly_subscriptions_id" {
  description = "Map of id values across all ce_anomaly_subscriptions, keyed the same as var.ce_anomaly_subscriptions"
  value       = { for k, v in aws_ce_anomaly_subscription.ce_anomaly_subscriptions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ce_anomaly_subscriptions_account_id" {
  description = "Map of account_id values across all ce_anomaly_subscriptions, keyed the same as var.ce_anomaly_subscriptions"
  value       = { for k, v in aws_ce_anomaly_subscription.ce_anomaly_subscriptions : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "ce_anomaly_subscriptions_arn" {
  description = "Map of arn values across all ce_anomaly_subscriptions, keyed the same as var.ce_anomaly_subscriptions"
  value       = { for k, v in aws_ce_anomaly_subscription.ce_anomaly_subscriptions : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ce_anomaly_subscriptions_frequency" {
  description = "Map of frequency values across all ce_anomaly_subscriptions, keyed the same as var.ce_anomaly_subscriptions"
  value       = { for k, v in aws_ce_anomaly_subscription.ce_anomaly_subscriptions : k => v.frequency if v.frequency != null && length(v.frequency) > 0 }
}
output "ce_anomaly_subscriptions_monitor_arn_list" {
  description = "Map of monitor_arn_list values across all ce_anomaly_subscriptions, keyed the same as var.ce_anomaly_subscriptions"
  value       = { for k, v in aws_ce_anomaly_subscription.ce_anomaly_subscriptions : k => v.monitor_arn_list if v.monitor_arn_list != null && length(v.monitor_arn_list) > 0 }
}
output "ce_anomaly_subscriptions_name" {
  description = "Map of name values across all ce_anomaly_subscriptions, keyed the same as var.ce_anomaly_subscriptions"
  value       = { for k, v in aws_ce_anomaly_subscription.ce_anomaly_subscriptions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ce_anomaly_subscriptions_subscriber" {
  description = "Map of subscriber values across all ce_anomaly_subscriptions, keyed the same as var.ce_anomaly_subscriptions"
  value       = { for k, v in aws_ce_anomaly_subscription.ce_anomaly_subscriptions : k => v.subscriber if v.subscriber != null && length(v.subscriber) > 0 }
}
output "ce_anomaly_subscriptions_tags" {
  description = "Map of tags values across all ce_anomaly_subscriptions, keyed the same as var.ce_anomaly_subscriptions"
  value       = { for k, v in aws_ce_anomaly_subscription.ce_anomaly_subscriptions : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ce_anomaly_subscriptions_tags_all" {
  description = "Map of tags_all values across all ce_anomaly_subscriptions, keyed the same as var.ce_anomaly_subscriptions"
  value       = { for k, v in aws_ce_anomaly_subscription.ce_anomaly_subscriptions : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "ce_anomaly_subscriptions_threshold_expression" {
  description = "Map of threshold_expression values across all ce_anomaly_subscriptions, keyed the same as var.ce_anomaly_subscriptions"
  value       = { for k, v in aws_ce_anomaly_subscription.ce_anomaly_subscriptions : k => one(v.threshold_expression) if v.threshold_expression != null && length(v.threshold_expression) > 0 }
}

