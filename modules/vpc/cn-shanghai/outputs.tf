output "vpc_id" {
  value = data.alicloud_vpcs.existing_vpc.vpcs[0].id
}
