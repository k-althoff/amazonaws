resource "aws_instance" "ecsetup" {
  ami           = var.ec_ami
  instance_type = var.ec_instance_type
#  iam_instance_profile = "ec2-ssm-role-profile"
#  vpc_security_group_ids = [aws_security_group.ecsg.id]
  subnet_id = var.subnet_id
#  tags = var.mytags
#  ebs_optimized = var.ebs_optimized
  root_block_device {
    volume_type = "gp2"
    volume_size = var.storage_size
  }
  key_name = "kirks-kp"
}

#resource "aws_security_group" "ecsg" {
#  name = var.ec2_name
#  description = "EC2 Instance"
#  vpc_id = vpc-0da6c17e83865cd29
#
#  dynamic "ingress" {
#  for_each = [for i in var.ingress_sg :
#   {
#     from_port = i.from_port
#     to_port = i.to_port
#     protocol = i.proto
#     cidr_blocks = i.src_cidr
#   }
#   ]
#   content {
#     from_port = ingress.value.from_port
#     to_port = ingress.value.to_port
#     protocol = ingress.value.protocol
#     cidr_blocks = ingress.value.cidr_blocks
#   }
# }

#  dynamic "egress" {
#   for_each = [for i in var.egress_sg :
#   {
#     from_port = i.from_port
#     to_port = i.to_port
#     protocol = i.proto
#     cidr_blocks = i.dst_cidr
#   }
#   ]
#   content {
#     from_port = egress.value.from_port
#     to_port = egress.value.to_port
#     protocol = egress.value.protocol
#     cidr_blocks = egress.value.cidr_blocks
#   }
# }
#  tags = var.mytags
#}
