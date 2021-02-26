resource "oci_core_virtual_network" "MySQLVCN" {
  cidr_blocks = var.cidrblockz
  compartment_id = oci_identity_compartment.MySQLCompartment.id
  display_name = "MySQLVCN"

  # for dns

  dns_label = "MySQLVCN"
}