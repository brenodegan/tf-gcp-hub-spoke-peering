# Peering Hub to Prod & Prod to Hub

resource "google_compute_network_peering" "hub_to_prod" {
  name         = "hub-to-prod"
  network      = google_compute_network.vpc_hub.id
  peer_network = google_compute_network.vpc_prod.id
  export_custom_routes = true
}

resource "google_compute_network_peering" "prod_to_hub" {
  name         = "prod-to-hub"
  network      = google_compute_network.vpc_prod.id
  peer_network = google_compute_network.vpc_hub.id
  import_custom_routes = true
}

# Peering Hub to NProd & NProd to Hub

resource "google_compute_network_peering" "hub_to_nprod" {
  name         = "hub-to-nprod"
  network      = google_compute_network.vpc_hub.id
  peer_network = google_compute_network.vpc_nprod.id
  export_custom_routes = true
}

resource "google_compute_network_peering" "nprod_to_hub" {
  name         = "nprod-to-hub"
  network      = google_compute_network.vpc_nprod.id
  peer_network = google_compute_network.vpc_hub.id
  import_custom_routes = true
}
