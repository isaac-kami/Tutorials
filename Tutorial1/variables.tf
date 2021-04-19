
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

##  Ubuntu 20.04 image
## use link to add the corresponding OS to your region
### https://docs.oracle.com/en-us/iaas/images/image/cb6a4ca4-47e9-40fa-bdb1-8ee41636c8a7/

variable "instance_image" {
  default =   ""
}

#variable "instance_name" {
#  default = "MySQL1"
#}

variable "instance_shape" {
  default = "VM.Standard.E2.1"
}

## add here your AD
## example: Aodz:EU-FRANKFURT-1-AD-1
variable "available_dom" {
  default = ""
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
