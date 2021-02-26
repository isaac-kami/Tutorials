
variable "compartment_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaher3+y0u+add+y0ur+0c1d"
}

#for vcn block

variable "cidrblockz" {
  type = list(string)
  default = ["10.0.0.0/16"]
}

#for subnet

variable "cidrsubnet" {
  default = "10.0.1.0/24"
}

# for ingress


variable "cidr_ingress" {
  default = "10.0.0.0/16"
}

# for security list

variable "portz" {
 default = [22,3306,33060]
}

## for instance, choosing Ubuntu 20.04 image

variable "instance_image" {
  default =   "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaa2fbceq23oofnxf4v23urfnfzui6n6det6ianoyvtmsbo5nzv2efq"
}

#variable "instance_name" {
#  default = "MySQL1"
#}

variable "instance_shape" {
  default = "VM.Standard.E2.1"
}

variable "available_dom" {
  default = "Aodz:EU-FRANKFURT-1-AD-1"
}

#change here with the location
#of your private ssh keys

variable "private_key_path" {
  default = "/root/.ssh/id_rsa"
}

# the number of instances to create (master-slave)
variable "instance_count" {
  default = 2
}