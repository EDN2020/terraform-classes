# Below is the provider which helps in connecting with AWS Account
provider "aws" {
  region = "us-east-1"
  shared_config_files = ["/Users/jjtech/.aws/config"]
  shared_credentials_files = ["/Users/jjtech/.aws/credentials"]
  profile = "terraform-user"
}