provider "google" {
 access_token = var.access_token
}

resource "google_compute_instance" "terraform" {
  project      = "manifest-access-320809"
  name         = "test-instance"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  labels =  {

  env = "dev"
  foo = "bar"

  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}
