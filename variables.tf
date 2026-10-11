variable "cloud_public_ips_lookup" {
  description = <<EOT
Map of cloud_public_ips_lookup, attributes below
Optional:
    - service_name
EOT

  type = map(object({
    service_name = optional(string)
  }))
}

