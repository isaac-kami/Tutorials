resource "oci_core_internet_gateway" "MySQLInternetGateway" {
  compartment_id = oci_identity_compartment.MySQLCompartment.id
  display_name = "MySQLInternetGateway"
  vcn_id = oci_core_virtual_network.MySQLVCN.id
}