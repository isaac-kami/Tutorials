resource "oci_core_subnet" "MySQLSubnet"{

  cidr_block = var.cidrsubnet

  compartment_id = oci_identity_compartment.MySQLCompartment.id
  
  vcn_id = oci_core_virtual_network.MySQLVCN.id

  display_name = "MySQLSubnet"

  # security list

  security_list_ids = [oci_core_security_list.MySQLSecurityList.id]

  # route table

  route_table_id = oci_core_route_table.MySQLRouteTable.id

  # dhcp
  dhcp_options_id = oci_core_dhcp_options.MySQLDHCPOptions.id

  # dns
  dns_label = "MySQL"

}