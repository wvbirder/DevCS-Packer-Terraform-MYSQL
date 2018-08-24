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
  default = "ocid1.image.oc1.iad.aaaaaaaa5iatbhjtzottevqgawnd7awg37aupc7d27d74n4itrprymsfnecq"
}

variable "ssh_public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDeSh38aXn0E5GeUf8OtqCBXa6H54PV4AMDsn2hqmK4HRGhE1oJ5hyYIUqvPy8BDoalsHdTvpYsFEW5Y532UcvKeL1lKUXAwqdhZc2mVT1kveLxwN3PtC0Zdl6wQH6qDEg+FmL//wzWx5MdihMTlhwWuu4CQd4jUIYNS04dC+KGFqPZz38UwWQ5KQoIrKqfe4RepO3C/euIsKtSWWhA/g2LVeQCCdco8Q0lu7nQo8f264ZOtONrM40gY5CyPVlrE6d/Bl3/QZjcSnK+vWANyibdcveziMe2VWX1T7uPsbVMJMpkuZH3eoeB4zBDRMrPHiFG4CQNi6osqGHDyNvyJp3T oracle@dhcp-adc-twvpn-3-vpnpool-10-154-115-159.vpn.oracle.com"
}

variable "ssh_private_key" {
  default = <<EOF
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEA3kod/Gl59BORnlH/DraggV2uh+eD1eADA7J9oapiuB0RoRNa
CeYcmCFKrz8vAQ6GpbB3U76WLBRFuWOd9lHLyni9ZSlFwMKnYWXNplU9ZL3i8cDd
z7QtGXZesEB+qgxIPhZi//8M1seTHYoTE5YcFrruAkHeI1CGDUtOHQvihhaj2c9/
FMFkOSkKCKyqn3uEXqTtwv3riLCrUlloQP4Ni1XkAgnXKPENJbu50KPH9uuGTrTj
azONIGOQsj1ZaxOnfwZd/0GY3Epyvr1gDcom3XL3s4jHtlVl9U+7j7G1TCTKZLmR
93qHgeMwQ0TKzx4hRuAkDYuqLKhhw8jb8iad0wIDAQABAoIBAQCxoEY/2cUSzcRR
37HRfwvY9BQwE0cc04l1Hd8YHUAPYWMh9IXBXTjCM/ArA3E7BfGAWvevWp9Dj9t7
Xefu2cPgAgVN3eIYOzNnN+NSI9EQPFAp4HUesRpMu3LEonTUy0W7H0Zyy8rlocqk
Ex5VS2EcpLjl4t5wF7tWyjMcMNANVnJ8VBJFYGjWnr8jArTCKyemgBx/fg5jnmaa
DyVzz7k5wFqSQxujJrm9kIXLrlF78iDA9CsShOVHICbwKmny3CFU01cy1y6EtbJl
5SMbXNoVN/yp4N3L6dQvPI9jQCGQ2384Rf2mj+lymhAka/rthxnES4YkmCeU/Ej6
B81RAqJ5AoGBAPiXGGW7hb09Hv0eJVpwg9XP5+EvyYwLNBzRnVEr3YbPYwv/Hz67
4/Ep4MPEd4lbO5UrbuhqHvZ3qsxlcistUcSJBd9zAp/KI95VYXat0ltQCdhquNFg
oVS1cK3pD10ccgER2ElVBAlKnFZvVwUAg6svzM2GAiRVVFQwFhi+DRXVAoGBAOTq
VJhWQK5vLXBNmjA7y4kkvqXLMEbxOZ0uMg3jPr3CrBUyQxIiw/cC8nP07tD3F53J
FT49mo0HYh6riKdsTKC7uCLjwYy/6EvXLc8pMFoCazNJ0lgvzPfl4xkNMyTyQEQJ
v6qp5TXIPAn9osw6V+KIPsTp3t0KHUxi5MngiHEHAoGAEI6XvGbiAHmqr7crS7vE
vB/t1MzHAsHYRbccYESoq4rykOD8JsSC6RQd+UwDni1qaYQMDgTLbSUJRjXXhdKt
6IYr0vcpDJV9EBjlte7b3OMW1Mg+6Qsjk63GBH9KW6xCV5nlqvSzoR7MDOG7jQS8
wFEdte6gA+V/CWBuiFVYL8UCgYEAywTUD+L3LHznlKEObVaqta/D8XBaGaDY0wDk
XZK70znyuj3AZDY3DDwt4Q9KOkPaSxLKZ0/lYMw6hi7lXG7dKvQxY6gQwQ52K8Tk
GMVT35AjmPIQvituojDdDxu4zzyWKIFo3igdY2x5avbqSiw4Q21IFgXApNLSlyth
83TSLUMCgYBrJocinumJya0QCuarx8913p+n5KoEl4FJRW6VnD3cZOV9kQ+Wjkvj
STAk2XCIqMp35C6ruuHo7RfQjwMNuz5my0Nz0z65xmNS+cm/h9LpyaYyKhCuZ1I6
nrfUtO6fq3mMbl17h5xIAGzY9NStszBdDgF0o1sOhLJGFOloP0GnDQ==
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
