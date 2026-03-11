module "vpc" {
  source = "../modules/vpc/cn-shanghai"
}

module "vswitch" {
  source = "../modules/vswitch/cn-shanghai"
}

module "ecs" {
  source = "../modules/ecs/cn-shanghai"
}

data "alicloud_security_groups" "existing" {
  resource_group_id = "sg-uf67krv4f28kqj9r1rgu"
}

data "alicloud_ack_service" "open" {
  enable = "On"
  type   = "propayasgo"
}

data "alicloud_security_groups" "ack" {
  tags = {
    "ack.aliyun.com" = "cd5e7b26ed4b640649b61d06dca6839e0"
  }
}