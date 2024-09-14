# us-east-1 provider
provider "aws" {
  region = "us-east-1"
}

# us-east-2

provider "aws" {    
  region = "us-east-2"
  alias = "us_east_2"
}

locals  {
    name = "JJTech-TF"
}

# DEPLOY IN US-EAST-2
module "sgmodule" { 
  source = "../module/sg"

  providers = {
    aws = aws.us_east_2
    }

  name = "${local.name}-SG"

}

#Deploy in us-east-1
module "ec2" {
    source = "../module/ec2"

    name = "${local.name}-Modules"
}

