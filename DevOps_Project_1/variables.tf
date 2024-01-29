variable "region" {
  default = "eu-west-2"
}



variable "vpc_id" {
  default = "vpc-03bf5a770cef776cb"
}

variable "cluster_name" {
  default = "mycluster"
}

variable "node_group_name" {
  default = "mynode"
}

variable "node_instance_type" {
  default = "t2.micro"
}