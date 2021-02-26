resource "oci_core_dhcp_options" "MySQLDHCPOptions" {

  compartment_id = oci_identity_compartment.MySQLCompartment.id
  vcn_id = oci_core_virtual_network.MySQLVCN.id
  display_name = "MySQLDHCPOptions"

  options {
    type = "DomainNameServer"
    server_type = "VcnLocalPlusInternet"
  }

  options {
    type = "SearchDomain"
    search_domain_names = ["mysql.com"]
  }

 }