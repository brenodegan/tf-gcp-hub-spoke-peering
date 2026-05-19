#######################################
## 1 - Create VM Test in VPC HUB HUB ##
#######################################

## 1.1 VM in US-EAST1

resource "google_compute_instance" "vm-hub-useast1" {
    name = "vm-hub-useast1"
    machine_type = "e2-micro"
    zone = "us-east1-c"
  
  boot_disk {
    auto_delete = true
    device_name = "vm-hub-useast1"
    initialize_params {
      image = "projects/debian-cloud/global/images/debian-12-bookworm-v20260210"
      size  = 10
      type  = "pd-balanced"
    }

    mode = "READ_WRITE"
    }
network_interface {
    queue_count = 0
    stack_type  = "IPV4_ONLY"
    subnetwork  = "subnet-hub-us-east1"
    }

}

## 1.2 VM in SOUTHAMERICA-EAST1

#resource "google_compute_instance" "vm-hub-saeast1" {
#    name = "vm-hub-saeast1"
#    machine_type = "e2-micro"
#    zone = "southamerica-east1-c"
#  
#  boot_disk {
#    auto_delete = true
#    device_name = "vm-hub-saeast1"
#    initialize_params {
#      image = "projects/debian-cloud/global/images/debian-12-bookworm-v20260210"
#      size  = 10
#      type  = "pd-balanced"
#    }

#    mode = "READ_WRITE"
#    }
#network_interface {
#    queue_count = 0
#    stack_type  = "IPV4_ONLY"
#    subnetwork  = "subnet-hub-sa-east1"
#    }
#}

########################################
## 2 - Create VM Test in VPC HUB PROD ##
########################################

## 2.1 VM in US-EAST1
resource "google_compute_instance" "vm-prod-useast1" {
    name = "vm-prod-useast1"
    machine_type = "e2-micro"
    zone = "us-east1-c"
  
  boot_disk {
    auto_delete = true
    device_name = "vm-prod-useast1"
    initialize_params {
      image = "projects/debian-cloud/global/images/debian-12-bookworm-v20260210"
      size  = 10
      type  = "pd-balanced"
    }

    mode = "READ_WRITE"
    }
network_interface {
    queue_count = 0
    stack_type  = "IPV4_ONLY"
    subnetwork  = "subnet-prod-us-east1"
    }

}

## 2.2 VM in SOUTHAMERICA-EAST1

#resource "google_compute_instance" "vm-prod-saeast1" {
#    name = "vm-prod-saeast1"
#    machine_type = "e2-micro"
#    zone = "southamerica-east1-c"
#  
#  boot_disk {
#    auto_delete = true
#    device_name = "vm-prod-saeast1"
#    initialize_params {
#      image = "projects/debian-cloud/global/images/debian-12-bookworm-v20260210"
#      size  = 10
#      type  = "pd-balanced"
#    }

#    mode = "READ_WRITE"
#    }
#network_interface {
#    queue_count = 0
#    stack_type  = "IPV4_ONLY"
#    subnetwork  = "subnet-prod-sa-east1"
#    }

#}

#########################################
## 3 - Create VM Test in VPC HUB NPROD ##
#########################################

## 3.1 VM in US-EAST1
resource "google_compute_instance" "vm-nprod-useast1" {
    name = "vm-nprod-useast1"
    machine_type = "e2-micro"
    zone = "us-east1-c"
  
  boot_disk {
    auto_delete = true
    device_name = "vm-nprod-useast1"
    initialize_params {
      image = "projects/debian-cloud/global/images/debian-12-bookworm-v20260210"
      size  = 10
      type  = "pd-balanced"
    }

    mode = "READ_WRITE"
    }
network_interface {
    queue_count = 0
    stack_type  = "IPV4_ONLY"
    subnetwork  = "subnet-nprod-us-east1"
    }

}

## 3.2 VM in SOUTHAMERICA-EAST1
#resource "google_compute_instance" "vm-nprod-saeast1" {
#    name = "vm-nprod-saeast1"
#    machine_type = "e2-micro"
#    zone = "southamerica-east1-c"
#  
#  boot_disk {
#    auto_delete = true
#    device_name = "vm-nprod-saeast1"
#    initialize_params {
#      image = "projects/debian-cloud/global/images/debian-12-bookworm-v20260210"
#      size  = 10
#      type  = "pd-balanced"
#    }
#    mode = "READ_WRITE"
#    }
#network_interface {
#    queue_count = 0
#    stack_type  = "IPV4_ONLY"
#    subnetwork  = "subnet-nprod-sa-east1"
#    }

#}