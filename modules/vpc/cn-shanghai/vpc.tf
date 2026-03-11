data "alicloud_vpcs" "existing_vpc" {
  cidr_block           = "172.19.0.0/16"
  # classic_link_enabled = "false"
  # description          = "System created default VPC."
  resource_group_id    = "rg-acfmzh3zsgrlwza"
}


data "alicloud_vpcs" "k8s_vpc" {
  cidr_block           = "10.0.0.0/8"
  # classic_link_enabled = "false"
  # description          = "System created default VPC."
  resource_group_id    = "rg-acfmzh3zsgrlwza"
}
