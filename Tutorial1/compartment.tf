resource "oci_identity_compartment" "MySQLCompartment" {
    compartment_id = var.compartment_ocid
    description = "Compartment for MySQL"
    name = "MySQLCompartment"
}