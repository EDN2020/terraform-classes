variable "testing" {
   default = true
}

resource "aws_instance" "jjtech-dev" {
   ami = "ami-036f5574583e16426"
   instance_type = "t2.micro"
   count = var.testing == true ? 3 : 0  # count = 3
}

resource "aws_instance" "jjtech-prod" {
   ami = "ami-036f5574583e16426"
   instance_type = "t3.large"
   count = var.testing == false ? 1 : 0
}
