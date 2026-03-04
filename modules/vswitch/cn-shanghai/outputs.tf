output "vswitch_id" {
  value = data.alicloud_vswitches.existing_vswitch.vswitches[0].id
}
