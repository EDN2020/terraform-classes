# Below is the variables blocks
variable "ec2_name_tag" {
  default = ["linux", "ubuntu","rhel"]
}

variable "instance_type" {
            #   0          1          2
  default = ["t2.micro", "t2.medium","t2.nano"]
}

variable "ami_ids" {
  default = {
    0 = "ami-01bc990364452ab3e",
    1 = "ami-0fc5d935ebf8bc3bc",
    2 = "ami-05a5f6298acdb05b6"
  }
}