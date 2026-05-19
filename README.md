# tf-gcp-hub-spoke-peering

This repository creates

1) VPC Topology Hub and Spoke Based on Peerings (vpc-hub peers to vpc-prod and vpc-nprod; on the other hand, vpc-prod and vpc-nprod cant communicate to each other)
2) A subnet in useast-1 and southamerica-east1 for each VPC
3) A Policy Firewall allowing connections in all protocols/ports from RFC1918, Load Balancers, Health Checks and IAP IP Ranges
4) Cloud NAT for all VPCs in all regions with subnets

Explore and uncomment lines accordingly 



                                    +----------+--------------- subnet-prod-us-east1 10.8.0.0/24
                                    | VPC PROD |
                                    +----------+--------------- subnet-prod-sa-east1 10.11.0.0/24
                                      |
                     VPC Peering      |
                +---------------------+
                |                                   
                | 
           +---------+--------------- subnet-hub-us-east1 10.0.0.0/24
           | VPC HUB |
           +---------+--------------- subnet-hub-sa-east1 10.0.5.0/24
                | 
                |   
                +---------------------+
                     VPC Peering      |                 
                                      | 
                                      +-----------+------------ subnet-nprod-us-east1 10.16.0.0/24
                                      | VPC NPROD |
                                      +-----------+------------ subnet-nprod-sa-east1 10.19.0.0/24
