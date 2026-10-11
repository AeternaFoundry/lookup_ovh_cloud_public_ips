data "ovh_cloud_public_ips" "cloud_public_ips_lookup" {
  for_each = var.cloud_public_ips_lookup

  service_name = each.value.service_name
}

