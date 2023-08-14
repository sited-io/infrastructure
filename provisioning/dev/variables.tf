variable "gcloud-project" {
  description = "Google project name"
}

variable "project-region" {
  description = "Region in which all resources should be provisioned"
}

variable "key_ring" {
  description = "Cloud KMS key ring name to create"
}

variable "crypto_key" {
  description = "Crypto key name to create under the key ring"
}
