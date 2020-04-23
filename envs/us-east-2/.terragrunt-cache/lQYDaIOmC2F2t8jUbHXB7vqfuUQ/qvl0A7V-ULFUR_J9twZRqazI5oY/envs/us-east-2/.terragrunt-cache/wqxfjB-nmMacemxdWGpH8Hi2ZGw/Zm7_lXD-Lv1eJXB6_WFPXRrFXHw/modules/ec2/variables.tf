variable "ec_ami" {
  description = "AMI for the EC2 Instance, AMI information can be found in the AWS console"
}

#variable "alarms_email" {
#  description = "Email to where alarms should be snet"
#  type = string
#}

variable "ebs_optimized" {
  description = "If the stroage should be using EBS"
  type = bool
  default = true
}

variable "ec_instance_type" {
#  description = "EC2 instance type, info can be found here https://aws.amazon.com/ec2/instance-types/"
#  default = "t2.micro”
}

variable "ec2_name" {
  description = "Name of the EC2 instance"
}

variable "subnet_id" {
  description = "Subnet ID to be installed into, see region.hcl for Subnet IDs"
}

variable "mytags" {
  description = "Tags to be used for the EC2 instance."
#  type = "map"
}

variable "storage_size" {
  description = "Storage size for EC2 in GB"
  default = 8
}


variable "ingress_sg" {
  description = "IPs and Ports that are allowed to connect to the instance"
  type = list(object({
         from_port = number
         to_port = number
         proto = string
         src_cidr = list(string)
              }))
}

variable "egress_sg" {
  description = "IPs and Ports that the instance is allowed to connect to"
  type = list(object({
         from_port = number
         to_port = number
         proto = any
         dst_cidr = list(any)
              }))
}
