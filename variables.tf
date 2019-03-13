variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
#variable "region" {}
#variable "number_of_instances" {}
variable "compartment_ocid" {}

variable "region" {
  default = "us-ashburn-1"
}

variable "private_key_path" {
  default = "./oci_api_key.pem"
}

variable "client_image" {
  default = "ocid1.image.oc1.iad.aaaaaaaawufnve5jxze4xf7orejupw5iq3pms6cuadzjc7klojix6vmk42va"
}

variable "ssh_public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDeSh38aXn0E5GeUf8OtqCBXa6H54PV4AMDsn2hqmK4HRGhE1oJ5hyYIUqvPy8BDoalsHdTvpYsFEW5Y532UcvKeL1lKUXAwqdhZc2mVT1kveLxwN3PtC0Zdl6wQH6qDEg+FmL//wzWx5MdihMTlhwWuu4CQd4jUIYNS04dC+KGFqPZz38UwWQ5KQoIrKqfe4RepO3C/euIsKtSWWhA/g2LVeQCCdco8Q0lu7nQo8f264ZOtONrM40gY5CyPVlrE6d/Bl3/QZjcSnK+vWANyibdcveziMe2VWX1T7uPsbVMJMpkuZH3eoeB4zBDRMrPHiFG4CQNi6osqGHDyNvyJp3T oracle@dhcp-adc-twvpn-3-vpnpool-10-154-115-159.vpn.oracle.com"
}

variable "ssh_private_key" {
  default = <<EOF
-----BEGIN RSA PRIVATE KEY-----
-----END RSA PRIVATE KEY-----
EOF
}

# Choose an Availability Domain
variable "AD" {
    default = "1"
}

variable "InstanceShape" {
  default = "VM.Standard1.1"
}

variable "InstanceOS" {
  default = "Oracle Linux"
}

variable "InstanceOSVersion" {
  default = "7.5"
}

variable "VPC-CIDR" {
  default = "10.0.0.0/16"
}

variable "DevCS_SubnetAD01CIDR" {
  default = "10.0.1.0/24"
}

variable "InstanceBootStrap" {
  default = "./userdata/bootstrap"
}


### Added for Block , block.tf , remote-exec.tf

variable "2TB" {
    default = "2097152"
}

variable "256GB" {
    default = "262144"
}

variable "50GB" {
    default = "51200"
}

#variable "user_name" {}
#variable "deployment_short_id" {}
#variable "deployment_auuid" {}
#variable "user_email" {}
