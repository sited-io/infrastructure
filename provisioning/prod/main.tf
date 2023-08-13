terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  credentials = file("gcp_credentials.json")

  project = var.gcloud-project
  region  = var.project-region
}

resource "google_service_account" "vault_kms_service_account" {
  account_id   = "vault-gcpkms"
  display_name = "Vault KMS for auto-unseal"
}

# resource "google_kms_key_ring" "key_ring" {
#   project  = var.gcloud-project
#   name     = var.key_ring
#   location = var.project-region
# }

# resource "google_kms_crypto_key" "crypto_key" {
#   name            = var.crypto_key
#   key_ring        = google_kms_key_ring.key_ring.id
#   rotation_period = "2592000s"
# }

resource "google_kms_key_ring_iam_binding" "vault_iam_kms_binding" {
  # key_ring_id = google_kms_key_ring.key_ring.id
  key_ring_id = "${var.gcloud-project}/${var.project-region}/${var.key_ring}"
  role        = "roles/owner"

  members = [
    "serviceAccount:${google_service_account.vault_kms_service_account.email}",
  ]
}
