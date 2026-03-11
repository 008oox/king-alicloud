output "vpc_id" {
  value = data.alicloud_vpcs.existing_vpc.vpcs[0].id
}

output "vpc_k8sid" {
  value = data.alicloud_vpcs.k8s_vpc.vpcs[0].id
}
