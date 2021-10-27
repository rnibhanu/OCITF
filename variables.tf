variable "compartment_ocid" {
  default = "ocid1.compartment.oc1..aaaaaaaaggcz73ncqes4lsyfvncy22xdshbpnjvwrczgenywtx5vnlwdqh5a"
}

variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaasebb2h3a564nvf6ekja53uhy3rto4o3imikhgeuni2yyohsukesq"
}

variable "user_ocid" {
  default = "ocid1.user.oc1..aaaaaaaagpnf5ea5azxgo3xzu7uagylgys6ufupaaiasndxlojlwfkuxiwva"
}

variable "fingerprint" {
  default = "e2:ec:e9:7e:74:d3:9b:5a:1a:e7:d4:6b:1d:cc:db:c5"
}

variable "private_key_path" {
  default = "/home/opc/.oci/oci_api_key.pem"
}
variable "AD" {
  default = "2"
}

variable "region" {
  default = "us-ashburn-1"
}

variable "vcn_cidr" {
  default = "10.20.0.0/16"
}

variable "vcn_dns_label" {
  description = "VCN DNS label"
  default     = "vcn02"
}

variable "dns_label" {
  description = "Subnet DNS Label"
  default     = "DesktopSubnet"
}