resource "oci_core_route_table" "MySQLRouteTable" {
  compartment_id = oci_identity_compartment.MySQLCompartment.id
  vcn_id = oci_core_virtual_network.MySQLVCN.id
  display_name = "MySQLRouteTable"

  route_rules {
    destination = "0.0.0.0/0"
    network_entity_id = oci_core_internet_gateway.MySQLInternetGateway.id
  }
}