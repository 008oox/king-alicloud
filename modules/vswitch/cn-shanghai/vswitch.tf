data "alicloud_vswitches" "existing_vswitch" {
  # availability_zone = "cn-shanghai-d"
  cidr_block        = "172.19.128.0/20"
  # description       = "System created default virtual switch."
  vpc_id            = "vpc-uf6bt5zz93sroofw28arf"
  zone_id           = "cn-shanghai-d"
}


data "alicloud_vswitches" "k8s_vswitch" {
  # availability_zone = "cn-shanghai-d"
  cidr_block        = "10.1.0.0/24"
  vpc_id            = "vpc-uf6ohkjxh7y3tt66zhapl"
  zone_id           = "cn-shanghai-d"
}