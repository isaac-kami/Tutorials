# get a list of vnic attachments

 data "oci_core_vnic_attachments" "MySQLVNICs" {
       count = var.instance_count
       compartment_id = oci_identity_compartment.MySQLCompartment.id
       availability_domain = var.available_dom
       instance_id = oci_core_instance.MySQLInstance[count.index].id
  }

# get the primary VNIC ID

  data "oci_core_vnic" "MySQLVNICprimary" {
     count = var.instance_count
     vnic_id = lookup(data.oci_core_vnic_attachments.MySQLVNICs[count.index].vnic_attachments[0], "vnic_id")
  }