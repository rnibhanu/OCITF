variable "compartment_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaadnvhy2rcdc2xroaserm3u6m4s2bookfzc5scr23ri6nq5rzmkp4q"
}

variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaadnvhy2rcdc2xroaserm3u6m4s2bookfzc5scr23ri6nq5rzmkp4q"
}

variable "user_ocid" {
  default = "ocid1.user.oc1..aaaaaaaativfczdnl77prvyi6az7xh6ngnrfsnfq5rn3j3mjpbfcz6usc36q"
}

variable "fingerprint" {
  default = "b8:bf:6c:95:30:a1:6c:a7:c6:b7:68:82:a8:df:93:93"
}

variable "private_key_path" {
  default = "/var/lib/jenkins/workspace/Terraform_Pipeline/ociprivate.pem"
}
variable "AD" {
  default = "2"
}

variable "region" {
  default = "ap-hyderabad-1"
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
