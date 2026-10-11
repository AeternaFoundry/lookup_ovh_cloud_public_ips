output "cloud_public_ips_lookup_public_ips" {
  description = "Map of public_ips values across all cloud_public_ips_lookup, keyed the same as var.cloud_public_ips_lookup except keys with no public_ips are omitted"
  value       = { for k, v in data.ovh_cloud_public_ips.cloud_public_ips_lookup : k => v.public_ips if v.public_ips != null && length(v.public_ips) > 0 }
}
output "cloud_public_ips_lookup_service_name" {
  description = "Map of service_name values across all cloud_public_ips_lookup, keyed the same as var.cloud_public_ips_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_public_ips.cloud_public_ips_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

