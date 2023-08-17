variable "gcloud-project" {
  type = string
  description = "Google project name"
}

variable "project-region" {
  type = string
  description = "Region in which all resources should be provisioned"
}

variable "key_ring" {
  type = string
  description = "Cloud KMS key ring name to create"
}

variable "crypto_key" {
  type = string
  description = "Crypto key name to create under the key ring"
}
