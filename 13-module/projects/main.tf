resource "aws_instance" "jjtect" {
  ami           = var.ami_id
  instance_type = var.instance_type
}

resource "aws_iam_user" "jjtech" {
  name = var.user_name
}