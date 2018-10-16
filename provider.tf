# Deployement Region settings
provider "oci" {
  tenancy_ocid     = "${var.tenancy}"
  user_ocid        = "${var.user}"
  fingerprint      = "${var.fingerprint}"
  private_key_path = "${var.privatekeylocation}"
  #  private_key_password = "${var.private_key_password}"
  region = "${var.region}"
}

# Home Region Setting, only used if Deployement Region is not the same at Home Region
provider "oci" {
  alias = "ashburn"
  tenancy_ocid     = "${var.tenancy}"
  user_ocid        = "${var.user}"
  fingerprint      = "${var.fingerprint}"
  private_key_path = "${var.privatekeylocation}"
  #  private_key_password = "${var.private_key_password}"
  region = "us-ashburn-1"
}
