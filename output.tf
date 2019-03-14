output "id" {
  value       = "${join("", aws_elasticache_replication_group.default.*.id)}"
  description = "Redis cluster id"
}

output "security_group_id" {
  value       = "${join("", aws_security_group.default.*.id)}"
  description = "Security group id"
}

output "port" {
  value       = "${var.port}"
  description = "Redis port"
}

output "host" {
  value       = "${module.dns.hostname}"
  description = "Redis host"
}

output "primary_endpoint" {
  value       = "${aws_elasticache_replication_group.default.configuration_endpoint_address}"
  description = "The address of the replication group configuration endpoint when cluster mode is enabled."
}