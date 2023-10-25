# Below is the variables blocks
variable "ec2_name_tag" {
  default = ["linux-server", "ubuntu-server","rhel9-server"]
}

variable "instance_type" {
  default = ["t2.micro", "t2.medium","t2.nano"]
}

variable "ami_ids" {
  default = {
    0 = "ami-0dbc3d7bc646e8516",
    1 = "ami-0fc5d935ebf8bc3bc",
    2 = "ami-0fc5d935ebf8bc3bc"
  }
}