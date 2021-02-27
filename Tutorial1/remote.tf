resource "null_resource" "MySQLRemote" {

  depends_on = [oci_core_instance.MySQLInstance]
  count = var.instance_count

  provisioner "remote-exec" {
    inline = ["echo I am in ",
              "hostname",
              "python3 --version",
              "sleep 10",
              "sudo apt update",
              "sudo apt install -y firewalld",
              "sleep 5",
              "sudo firewall-cmd --add-port=3306/tcp --permanent",
              "sudo firewall-cmd --add-port=33060/tcp --permanent",
              "sudo firewall-cmd --reload"]

    connection {
      type = "ssh"
      user = "ubuntu"
      host = data.oci_core_vnic.MySQLVNICprimary[count.index].public_ip_address
      private_key = file(var.private_key_path)
   }

  }

   provisioner "local-exec" {

     command = "ansible-playbook -i '${data.oci_core_vnic.MySQLVNICprimary[count.index].public_ip_address},' --private-key ${var.private_key_path} mysql.yml  -u ubuntu"

   }

}
