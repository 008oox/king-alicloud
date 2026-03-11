resource "alicloud_cs_managed_kubernetes" "test_king" {
  # zone_ids = "cn-shanghai-d"
  name             = "cluster-king"
  new_nat_gateway = false
  vswitch_ids            = [module.vswitch.vswitch_k8sid]
  security_group_id        = data.alicloud_security_groups.ack.ids[0]
  service_cidr = "192.168.0.0/16"
  pod_cidr = "172.16.0.0/20"
}

resource "alicloud_cs_kubernetes_node_pool" "test_king_node_pool" {
  cluster_id = alicloud_cs_managed_kubernetes.test_king.id
  node_pool_name       = "node-pool-king"
  desired_size     = 2
  instance_types  = ["ecs.t5-lc1m2.small"] 
  vswitch_ids     = [module.vswitch.vswitch_k8sid]
  system_disk_category = "cloud_efficiency"
  system_disk_size     = 40
  instance_charge_type = "PostPaid"
  internet_charge_type   = "PayByTraffic"
  # internet_max_bandwidth_in = 100
  internet_max_bandwidth_out = 1
  # scaling_config {
  #   min_size = 1
  #   max_size = 2
  #   type     = "cpu"
  # }
  ram_role_name = "k8s-creation"
  password = var.ecs_password
}