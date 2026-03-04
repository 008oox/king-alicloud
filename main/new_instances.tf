# resource "alicloud_instance" "new_ecs" {
#   availability_zone = "cn-shanghai-d"
#   instance_name     = "test-new-ecs"
#   host_name         = "test-new-ecs"
#   instance_type     = "ecs.t5-lc2m1.nano"
#   image_id          = "centos_7_9_x64_20G_alibase_20240628.vhd"

#   vswitch_id             = module.vswitch.vswitch_id
#   # security_groups = ["sg-uf6194l1tgsdd8b31sak"]
#   security_groups        = [data.alicloud_security_groups.existing.resource_group_id]
#   internet_charge_type   = "PayByTraffic"
#   # internet_max_bandwidth_in = 100
#   internet_max_bandwidth_out = 1
#   system_disk_category   = "cloud_efficiency"
#   system_disk_size       = 40
#   password               = var.ecs_password
# }
