variable "InstanceImageOCID" {
  type = "map"
  default = {
    // Oracle-provided image "Oracle-Linux-7.4-2017.12.18-0"
    // See https://docs.us-phoenix-1.oraclecloud.com/Content/Resources/Assets/OracleProvidedImageOCIDs.pdf
    us-phoenix-1 = "ocid1.image.oc1.phx.aaaaaaaasc56hnpnx7swoyd2fw5gyvbn3kcdmqc2guiiuvnztl2erth62xnq"
    us-ashburn-1 = "ocid1.image.oc1.iad.aaaaaaaaxrqeombwty6jyqgk3fraczdd63bv66xgfsqka4ktr7c57awr3p5a"
    eu-frankfurt-1 = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaayxmzu6n5hsntq4wlffpb4h6qh6z3uskpbm5v3v4egqlqvwicfbyq"
  }
}

resource "oci_core_instance" "DevCS_MYSQL" {
//  count               = "${var.number_of_instances}"
  availability_domain = "${lookup(data.oci_identity_availability_domains.ADs.availability_domains[0],"name")}"
  compartment_id      = "${var.compartment_ocid}"
//  display_name        = "${format("Docker%03d", count.index + 1)}"
  display_name        = "MYSQL"
  image               = "${var.client_image}"
  shape               = "VM.Standard1.1"
  subnet_id           = "${oci_core_subnet.DevCS_SubnetAD01.id}"

  metadata {
    ssh_authorized_keys = "${var.ssh_public_key}"
  }

  connection {
    type        = "ssh"
    host        = "${self.public_ip}"
    user        = "opc"
    private_key = "${var.ssh_private_key}"
    timeout     = "10m"
  }

  provisioner "remote-exec" {
    inline = [
      "touch ~/IMadeAFile.Right.Here"
    ]
  }
}

