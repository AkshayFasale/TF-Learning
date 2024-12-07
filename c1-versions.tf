# Defining provider

terraform {
  required_version = ">= 1.8.5"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.11.2"
    }
  }

}


provider "google" {
  # Configuration options
  project = "terraform-practice-436907"
  region  = var.gcp-region
  alias   = "dev"
}

provider "google" {
  # Configuration options
  project = "terraform-practice-436907"
  region  = "europe-west1"
  alias   = "prod"
}
