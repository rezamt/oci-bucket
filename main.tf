terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "~> 5.0"
    }
  }
}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}


resource "oci_objectstorage_bucket" "this" {
  compartment_id = var.compartment_ocid
  namespace      = "sdzu7etqic8e"
  name           = var.bucket_name
  access_type    = var.bucket_access_type
}

output "bucket_name" {
  value = oci_objectstorage_bucket.this.name
}
