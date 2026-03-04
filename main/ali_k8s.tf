resource "alicloud_cs_managed_kubernetes" "test_king" {
  # zone_ids = "cn-shanghai-d"
  name             = "cluster-king"
  
  vswitch_ids            = [module.vswitch.vswitch_id]
  security_group_id        = data.alicloud_security_groups.existing.resource_group_id
  service_cidr = "172.21.0.0/20"
  pod_cidr = "192.168.0.0/16"
}

resource "alicloud_cs_kubernetes_node_pool" "test_king_node_pool" {
  cluster_id = alicloud_cs_managed_kubernetes.test_king.id
  node_pool_name       = "node-pool-king"
  desired_size     = 2
  instance_types  = ["ecs.t5-lc1m1.small"] 
  vswitch_ids     = [module.vswitch.vswitch_id]
  system_disk_category = "cloud_efficiency"
  system_disk_size     = 40
  instance_charge_type = "PostPaid"
  internet_charge_type   = "PayByTraffic"
  # internet_max_bandwidth_in = 100
  internet_max_bandwidth_out = 1
  scaling_config {
    min_size = 1
    max_size = 2
    type     = "cpu"
  }
  password = var.ecs_password
}