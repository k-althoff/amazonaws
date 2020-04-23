terraform {
 source = "../..//modules/ec2"
}

inputs = yamldecode(file("config.yml"))


dependencies {
  paths = []
}

include {
  path = find_in_parent_folders()
}

