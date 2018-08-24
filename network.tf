resource "oci_core_virtual_network" "DevCS_VCN" {
  cidr_block     = "${var.VPC-CIDR}"
  compartment_id = "${var.compartment_ocid}"
  display_name   = "DevCS_VCN"
  dns_label      = "docvcn"
}

resource "oci_core_internet_gateway" "DevCS_IGW" {
  compartment_id = "${var.compartment_ocid}"
  display_name   = "DevCS_IGW"
  vcn_id         = "${oci_core_virtual_network.DevCS_VCN.id}"
}

resource "oci_core_route_table" "DevCS_RT" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${oci_core_virtual_network.DevCS_VCN.id}"
  display_name   = "DevCS_RT"

  route_rules {
    cidr_block        = "0.0.0.0/0"
    network_entity_id = "${oci_core_internet_gateway.DevCS_IGW.id}"
  }
}

resource "oci_core_security_list" "DevCS_SL" {
  compartment_id = "${var.compartment_ocid}"
  display_name   = "DevCS_SL"
  vcn_id         = "${oci_core_virtual_network.DevCS_VCN.id}"

  egress_security_rules = [{
    protocol    = "6"
    destination = "0.0.0.0/0"
  },
    {
      protocol    = "1"
      destination = "0.0.0.0/0"
    },
    {
      protocol    = "17"
      destination = "0.0.0.0/0"
    },
  ]

  ingress_security_rules = [{
    tcp_options {
      "max" = 22
      "min" = 22
    }

    protocol = "6"
    source   = "0.0.0.0/0"
  },
  {
    tcp_options {
      "max" = 8002
      "min" = 8002
    }

    protocol = "6"
    source   = "0.0.0.0/0"
  },
  {
    tcp_options {
      "max" = 9080
      "min" = 9080
    }

    protocol = "6"
    source   = "0.0.0.0/0"
  },
  {
    tcp_options {
      "max" = 3306 
      "min" = 3306
    }

    protocol = "6"
    source   = "0.0.0.0/0"
  },
  {
    tcp_options {
      "max" = 8085
      "min" = 8085
    }

    protocol = "6"
    source   = "0.0.0.0/0"
  },
  {
    tcp_options {
      "max" = 8001
      "min" = 8001
    }

    protocol = "6"
    source   = "0.0.0.0/0"
  },
  {
    tcp_options {
      "max" = 80
      "min" = 80
    }

    protocol = "6"
    source   = "0.0.0.0/0"
  },
    {
      icmp_options {
        "type" = 0
      }

      protocol = 1
      source   = "0.0.0.0/0"
    },
    {
      icmp_options {
        "type" = 3
        "code" = 4
      }

      protocol = 1
      source   = "0.0.0.0/0"
    },
    {
      icmp_options {
        "type" = 8
      }

      protocol = 1
      source   = "0.0.0.0/0"
    },
  ]
}

resource "oci_core_subnet" "DevCS_SubnetAD01" {
  availability_domain = "${lookup(data.oci_identity_availability_domains.ADs.availability_domains[0],"name")}"
  cidr_block          = "${var.DevCS_SubnetAD01CIDR}"
  display_name        = "DevCS_SubnetAD01"
  compartment_id      = "${var.compartment_ocid}"
  vcn_id              = "${oci_core_virtual_network.DevCS_VCN.id}"
  route_table_id      = "${oci_core_route_table.DevCS_RT.id}"
  security_list_ids   = ["${oci_core_security_list.DevCS_SL.id}"]
  dns_label           = "docsnad01"
  dhcp_options_id     =  "${oci_core_virtual_network.DevCS_VCN.default_dhcp_options_id}"
#  prohibit_public_ip_on_vnic = "true"
}
