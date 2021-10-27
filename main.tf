terraform {
  required_providers {
    oci = {
      source = "hashicorp/oci"
    }
  }
}

/*provider "oci" {
  region              = "us-ashburn-2"
  auth                = "SecurityToken"
  config_file_profile = "OCITFTEST"
}*/

provider "oci" {
  tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaadnvhy2rcdc2xroaserm3u6m4s2bookfzc5scr23ri6nq5rzmkp4q"
  user_ocid = "ocid1.user.oc1..aaaaaaaativfczdnl77prvyi6az7xh6ngnrfsnfq5rn3j3mjpbfcz6usc36q" 
  private_key_path = "/var/lib/jenkins/workspace/Terraform_Pipeline/ociprivate.pem"
  fingerprint = "b8:bf:6c:95:30:a1:6c:a7:c6:b7:68:82:a8:df:93:93"
  region = "ap-hyderabad-1"
}

resource "oci_core_virtual_network" "vcn" {
  compartment_id = var.compartment_ocid
  cidr_block     = var.vcn_cidr
  dns_label      = var.vcn_dns_label
  display_name   = var.vcn_dns_label
}

resource "oci_core_subnet" "subnet" {
  availability_domain = ""
  compartment_id      = var.compartment_ocid
  vcn_id              = oci_core_virtual_network.vcn.id
  cidr_block          = cidrsubnet(var.vcn_cidr, 8, 1)
  display_name        = var.dns_label
  dns_label           = var.dns_label
}
