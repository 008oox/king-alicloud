output "vswitch_id" {
  value = data.alicloud_vswitches.existing_vswitch.vswitches[0].id
}

output "vswitch_k8sid" {
  value = data.alicloud_vswitches.k8s_vswitch.vswitches[0].id
}
