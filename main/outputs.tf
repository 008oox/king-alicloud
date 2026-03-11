output "existing_vpc_id" {
#   value = data.alicloud_vpcs.default.ids[0]
  value = module.vpc.vpc_id
}

output "existing_vswitch_id" {
#   value = data.alicloud_vswitches.default.ids[0]
  value = module.vswitch.vswitch_id
}

output "existing_ecs_id" {
#   value = data.alicloud_instances.existing_ecs.ids[0]
  value = module.ecs.instance_id
}

# output "existing_security_group_name" {
#   value = data.alicloud_security_groups.existing.resource_group_id
# }


# output "k8s_sg" {
#   value = data.alicloud_security_groups.ack.ids[0]
# }

# output "new_ecs_id" { 
#   value = alicloud_instance.new_ecs.id
# }