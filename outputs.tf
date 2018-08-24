# Output the private and public IPs of the instances

output "DevCS01PrivateIP" {
value = ["${data.oci_core_vnic.InstanceVnic.private_ip_address}"]
}

output "DevCS01PublicIP" {
value = ["${data.oci_core_vnic.InstanceVnic.public_ip_address}"]
}

#output "Username" {
#  value = ["${var.user_name}"]
#}

#output "UserEmail" {
#  value = ["${var.user_email}"]
#}

#output "shortid" {
#  value = ["${var.deployment_short_id}"]
#}

#output "aauid" {
#  value = ["${var.deployment_auuid}"]
#}
