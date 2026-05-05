################################
 # 1 - Create VPC-HUB
 ################################

resource "google_compute_network" "vpc_hub" {
  name                    = "vpc-hub"
  auto_create_subnetworks = false
  mtu                     = 1500
  routing_mode            = "GLOBAL"
}

################################
# 1.1 Create subnets for VPC-HUB
################################

resource "google_compute_subnetwork" "subnet_hub_useast1" {
  name          = "subnet-hub-us-east1"
  network       = google_compute_network.vpc_hub.id
  ip_cidr_range = "10.0.0.0/24"
  private_ip_google_access = true

  # Flow logs disabled
  # log_config {
  #   aggregation_interval = "INTERVAL_5_SEC"
  #   flow_sampling        = 0.5
  #   metadata             = "INCLUDE_ALL_METADATA"
  # }
}

resource "google_compute_subnetwork" "subnet_hub_saeast1" {
  name          = "subnet-hub-sa-east1"
  network       = google_compute_network.vpc_hub.id
  ip_cidr_range = "10.0.5.0/24"
  region        = "southamerica-east1"
  private_ip_google_access = true
}


################################
# 2 - Create VPC-PROD
################################

resource "google_compute_network" "vpc_prod" {
  name                    = "vpc-prod"
  auto_create_subnetworks = false
  mtu                     = 1500
  routing_mode            = "GLOBAL"
}

###################################
# 2.1 - Create subnets for VPC-PROD
###################################
resource "google_compute_subnetwork" "subnet_prod_useast1" {
  name          = "subnet-prod-us-east1"
  network       = google_compute_network.vpc_prod.id
  ip_cidr_range = "10.8.0.0/24"
  private_ip_google_access = true

  # Flow logs disabled
  # log_config {
  #   aggregation_interval = "INTERVAL_5_SEC"
  #   flow_sampling        = 0.5
  #   metadata             = "INCLUDE_ALL_METADATA"
  # }
}

resource "google_compute_subnetwork" "subnet_prod_saeast1" {
  name          = "subnet-prod-sa-east1"
  network       = google_compute_network.vpc_prod.id
  ip_cidr_range = "10.11.0.0/24"
  region        = "southamerica-east1"
  private_ip_google_access = true
}

################################
# 3 - Create VPC-NPROD
################################

resource "google_compute_network" "vpc_nprod" {
  name                    = "vpc-nprod"
  auto_create_subnetworks = false
  mtu                     = 1500
  routing_mode            = "GLOBAL"
}

################################
# 3.1 - Create subnets for VPC-NPROD
################################

resource "google_compute_subnetwork" "subnet_nprod_useast1" {
  name          = "subnet-nprod-us-east1"
  network       = google_compute_network.vpc_nprod.id
  ip_cidr_range = "10.16.0.0/24"
  private_ip_google_access = true

  # Flow logs disabled
  # log_config {
  #   aggregation_interval = "INTERVAL_5_SEC"
  #   flow_sampling        = 0.5
  #   metadata             = "INCLUDE_ALL_METADATA"
  # }
}

resource "google_compute_subnetwork" "subnet_nprod_saeast1" {
  name          = "subnet-nprod-sa-east1"
  network       = google_compute_network.vpc_nprod.id
  ip_cidr_range = "10.19.0.0/24"
  region        = "southamerica-east1"
  private_ip_google_access = true
}