# 1 - Create Global Firewall Policy
resource "google_compute_network_firewall_policy" "fw_policy_global" {
  name        = "policy-global-01"
  description = "Default policy defined by Org Admin"
}

# 1.1 - Allow access from RFC1918, LB & HC & IAP
resource "google_compute_network_firewall_policy_rule" "allow_rfc1918" {
  firewall_policy = google_compute_network_firewall_policy.fw_policy_global.name
  priority        = 1000
  direction       = "INGRESS"
  action          = "allow"
  rule_name       = "allow-rfc1918-hc"
  description     = "Allow access from RFC1918, LB & HC & IAP"

  match {
    src_ip_ranges = [
      "10.0.0.0/8",
      "172.16.0.0/12",
      "192.168.0.0/16",
      "35.191.0.0/16",
      "130.211.0.0/22",
      "35.235.240.0/20"
    ]
    layer4_configs {
      ip_protocol = "all"
    }
  }
}

# 4. Associate VPC Hub to Policy
resource "google_compute_network_firewall_policy_association" "assoc_hub" {
  name              = "assoc-hub"
  attachment_target = google_compute_network.vpc_hub.id
  firewall_policy   = google_compute_network_firewall_policy.fw_policy_global.name
}

# Associate VPC Prod to Policy
resource "google_compute_network_firewall_policy_association" "assoc_prod" {
  name              = "assoc-prod"
  attachment_target = google_compute_network.vpc_prod.id
#  attachment_target = "projects/${var.project_id}/global/networks/vpc-prod"
  firewall_policy   = google_compute_network_firewall_policy.fw_policy_global.name
}

# Associate VPC Hub to Policy
resource "google_compute_network_firewall_policy_association" "assoc_nprod" {
  name              = "assoc-nprod"
  attachment_target = google_compute_network.vpc_nprod.id
  firewall_policy   = google_compute_network_firewall_policy.fw_policy_global.name
}