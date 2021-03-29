resource "oci_core_route_table" "MySqlOciRouteTable" {
  compartment_id = oci_identity_compartment.MySqlOciCompartment.id
  vcn_id = oci_core_virtual_network.MySqlOciVCN.id
  display_name = "MySqlOciRouteTable"

  route_rules {
    destination = "0.0.0.0/0"
    network_entity_id = oci_core_internet_gateway.MySqlOciInternetGateway.id
  }
}



## just yolo here

resource "oci_core_default_route_table" "MySQLOciDefaultRouteTable" {

  manage_default_resource_id = oci_core_route_table.MySqlOciRouteTable.id
  display_name = "MySqlOciDefaultRouteTable"

  route_rules {
    destination = "0.0.0.0/0"
    network_entity_id = oci_core_internet_gateway.MySqlOciInternetGateway.id
  }
}
