# Below is the variables blocks
variable "ec2_name_tag" {
  default = ["JJTech1", "JJTech2"]
}

variable "instance_type" {
  default = ["t2.medium", "t2.micro"]
  type    = list(string)
}
variable "ami_ids" {
  default = {
    linux  = "ami-0dbc3d7bc646e8516",
    ubuntu = "ami-0fc5d935ebf8bc3bc"
  }
}


