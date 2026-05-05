# tf-gcp-hub-spoke-peering

This repository creates

1) VPC Topology Hub and Spoke Based on Peerings (vpc-hub peers to vpc-prod and vpc-nprod; on the other hand, vpc-prod and vpc-nprod cant communicate to each other)
2) A subnet in useast-1 and southamerica-east1 for each VPC
3) A Policy Firewall allowing connections in all protocols/ports from RFC1918, Load Balancers, Health Checks and IAP IP Ranges
4) A test VM in each VPC
5) Cloud NAT for all VPCs in all regions with subnets
