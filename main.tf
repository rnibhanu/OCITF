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
  tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaasebb2h3a564nvf6ekja53uhy3rto4o3imikhgeuni2yyohsukesq"
  user_ocid        = "ocid1.user.oc1..aaaaaaaagpnf5ea5azxgo3xzu7uagylgys6ufupaaiasndxlojlwfkuxiwva"
  fingerprint      = "e2:ec:e9:7e:74:d3:9b:5a:1a:e7:d4:6b:1d:cc:db:c5"
  private_key_path = "/home/opc/.oci/oci_api_key.pem"
  private_key_password = ""
  region           = "us-ashburn-1"
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