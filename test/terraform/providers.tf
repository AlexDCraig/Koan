provider "google" {
  credentials = file("account.json")
  project     = "Koan"
  region      = "us-west1"
}
