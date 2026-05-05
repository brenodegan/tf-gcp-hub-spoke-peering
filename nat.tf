#########################
## 1 - Cloud NAT - HUB ##
#########################

# 1.1 - Cloud Router for NAT in HUB VPC (US-EAST1)
resource "google_compute_router" "router_nat_hub_useast1" {
  name    = "router-nat-hub-us-east1"
  network = google_compute_network.vpc_hub.id
  region  = "us-east1"
}

# 1.2 - Cloud NAT HUB VPC (US-EAST1)
resource "google_compute_router_nat" "nat_hub_useast1" {
  name                               = "nat-public-hub-us-east1"
  router                             = google_compute_router.router_nat_hub_useast1.name
  region                             = google_compute_router.router_nat_hub_useast1.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
  auto_network_tier                  = "STANDARD"
}


# 1.3 - Cloud Router for NAT in HUB VPC (SOUTHAMERICA-EAST1)
#resource "google_compute_router" "router_nat_hub_saeast1" {
#  name    = "router-nat-hub-sa-east1"
#  network = google_compute_network.vpc_hub.id
#  region  = "southamerica-east1"
#}

# 1.4 - Cloud NAT HUB VPC (SOUTHAMERICA-EAST1)
#resource "google_compute_router_nat" "nat_hub_saeast1" {
#  name                               = "nat-public-hub-sa-east1"
#  router                             = google_compute_router.router_nat_hub_saeast1.name
#  region                             = google_compute_router.router_nat_hub_saeast1.region
#  nat_ip_allocate_option             = "AUTO_ONLY"
#  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
#  auto_network_tier                  = "STANDARD"
#}

##########################
## 2 - Cloud NAT - PROD ##
##########################

# 2.1 Cloud Router for NAT in PROD VPC (US-EAST1)
resource "google_compute_router" "router_nat_prod_useast1" {
  name    = "router-nat-prod-us-east1"
  network = google_compute_network.vpc_prod.id
  region  = "us-east1"
}

# 2.2 - Cloud NAT PROD VPC (US-EAST1)
resource "google_compute_router_nat" "nat_prod_useast1" {
  name                               = "nat-public-prod-us-east1"
  router                             = google_compute_router.router_nat_prod_useast1.name
  region                             = google_compute_router.router_nat_prod_useast1.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
  auto_network_tier                  = "STANDARD"
}
# 2.3 - Cloud Router for NAT in PROD VPC (SOUTHAMERICA-EAST1)
#resource "google_compute_router" "router_nat_prod_saeast1" {
#  name    = "router-nat-prod-sa-east1"
#  network = google_compute_network.vpc_prod.id
#  region  = "southamerica-east1"
#}

# 2.4 - Cloud NAT PROD VPC (SOUTHAMERICA-EAST1)
#resource "google_compute_router_nat" "nat_prod_saeast1" {
#  name                               = "nat-public-prod-sa-east1"
#  router                             = google_compute_router.router_nat_prod_saeast1.name
#  region                             = google_compute_router.router_nat_prod_saeast1.region
#  nat_ip_allocate_option             = "AUTO_ONLY"
#  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
#  auto_network_tier                  = "STANDARD"
#}

###########################
## 3 - Cloud NAT - NPROD ##
###########################

# 3.1 - Cloud Router for NAT in NPROD VPC (US-EAST1)
resource "google_compute_router" "router_nat_nprod_useast1" {
  name    = "router-nat-nprod-us-east1"
  network = google_compute_network.vpc_nprod.id
  region  = "us-east1"
}

# 3.2 - Cloud NAT NPROD VPC (US-EAST1)
resource "google_compute_router_nat" "nat_nprod_useast1" {
  name                               = "nat-public-nprod-us-east1"
  router                             = google_compute_router.router_nat_nprod_useast1.name
  region                             = google_compute_router.router_nat_nprod_useast1.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
  auto_network_tier                  = "STANDARD"
}
# 3.3 - Cloud Router for NAT in NPROD VPC (SOUTHAMERICA-EAST1)
#resource "google_compute_router" "router_nat_nprod_saeast1" {
#  name    = "router-nat-nprod-sa-east1"
#  network = google_compute_network.vpc_nprod.id
#  region  = "southamerica-east1"
#}

# 3.4 - Cloud NAT HUB VPC (SOUTHAMERICA-EAST1)
#resource "google_compute_router_nat" "nat_hub_saeast1" {
#  name                               = "nat-public-nprod-sa-east1"
#  router                             = google_compute_router.router_nat_nprod_saeast1.name
#  region                             = google_compute_router.router_nat_nprod_saeast1.region
#  nat_ip_allocate_option             = "AUTO_ONLY"
#  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
#  auto_network_tier                  = "STANDARD"
#}

