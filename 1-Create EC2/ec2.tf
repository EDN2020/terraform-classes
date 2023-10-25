
provider "aws" {
  region = "us-east-2"
  shared_config_files = ["/Users/jjtech/.aws/config"]
  shared_credentials_files = ["/Users/jjtech/.aws/credentials"]
  profile = "terraform-user"
}


# Below is the resource block which creates EC2 Instance
resource "aws_instance" "JJTech_Instance" {
  ami           = "ami-036f5574583e16426"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0e16e135ccb70c015"
  tags = {
    Name = "JJTech-desired-EC2"
  }
}

resource "aws_vpc" "JJtech_vpc" {
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "JJTech_VPC"
  }
}







