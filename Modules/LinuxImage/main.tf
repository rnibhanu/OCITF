#Compute.tf  https://registry.terraform.io/providers/hashicorp/oci/latest/docs
# Get a list of Availability Domains
data "oci_identity_availability_domains" "ADs" {
  compartment_id = var.tenancy_ocid
}

resource "oci_core_instance" "Linux_instance" {
    availability_domain = data.oci_identity_availability_domains.ADs.availability_domains[var.AD - 1]["name"]
    compartment_id = var.compartment_ocid
    shape = var.shape
    display_name = var.computerName

    source_details {
        source_id = var.image_ocid
        source_type = "image"
    }
 
    create_vnic_details {
        assign_public_ip = true
        subnet_id = var.subnet_ocid
        display_name     = "${var.computerName}-NIC"
    }

    preserve_boot_volume = false
}