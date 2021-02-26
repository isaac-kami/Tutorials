output "MySQL-0" {
  value = data.oci_core_vnic.MySQLVNICprimary[0].public_ip_address
}

output "MySQL-1" {
  value = data.oci_core_vnic.MySQLVNICprimary[1].public_ip_address
}