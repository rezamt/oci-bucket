variable "tenancy_ocid" {
  description = "OCID of the tenancy"
  type        = string
}

variable "user_ocid" {
  description = "OCID of the user"
  type        = string
}

variable "fingerprint" {
  description = "Fingerprint of the API key"
  type        = string
}

variable "private_key_path" {
  description = "Path to the private key file, supplied at runtime by Jenkins"
  type        = string
}

variable "region" {
  description = "OCI region (e.g. ap-sydney-1)"
  type        = string
}

variable "compartment_ocid" {
  description = "OCID of the compartment where the bucket will be created"
  type        = string
}

variable "bucket_name" {
  description = "Name of the Object Storage bucket"
  type        = string
  default     = "my-terraform-bucket"
}

variable "bucket_access_type" {
  description = "Bucket visibility: NoPublicAccess, ObjectRead, or ObjectReadWithoutList"
  type        = string
  default     = "NoPublicAccess"
}