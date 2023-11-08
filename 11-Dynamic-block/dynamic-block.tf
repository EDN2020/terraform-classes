
resource "aws_security_group" "jjtech_sg" {
  name        = "jjtech-app-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 9000
    to_port     = 9000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8500
    to_port     = 8500
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


# Lets convert above code using dynamic block

# variable "sg_ports" {
#   type        = list(number)
#   description = "list of ingress ports"
#   default     = [22, 443, 8080, 9000, 8500]
# }

# #without iterator
# resource "aws_security_group" "jjtech_dynamicsg" {
#   name        = "jjtech_dynamic-sg"
#   description = "Ingress for jjtech-app"

#   dynamic "ingress" {
#     for_each = var.sg_ports
#     content {
#       from_port   = ingress.value
#       to_port     = ingress.value
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#     }
#   }


#   dynamic "egress" {
#     for_each = var.sg_ports
#     content {
#       from_port   = egress.value
#       to_port     = egress.value
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#     }
#   }
# }

# # with iterator
# resource "aws_security_group" "jjtech_dynamicsg" {
#   name        = "jjtech_dynamic-sg"
#   description = "Ingress for jjtech-app"

#   dynamic "ingress" {
#     for_each = var.sg_ports
#     iterator = port
#     content {
#       from_port   = port.value
#       to_port     = port.value
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#     }
#   }


#   dynamic "egress" {
#     for_each = var.sg_ports
#     iterator = "port"
#     content {
#       from_port   = port.value
#       to_port     = port.value
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#     }
#   }
# }
