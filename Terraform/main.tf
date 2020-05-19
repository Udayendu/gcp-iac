provider "google" {
  credentials = file("keys/.credentials_file.json")
  project = "gcp-solution-architect-design"
  region  = var.region_name
  zone    = var.zone_name
}

resource "google_compute_instance" "vm_instance" {
  name         = var.vm_name
  machine_type = var.machine_size

  boot_disk {
    initialize_params {
      image = var.image_name
    }
  }

  network_interface {
    network = "default"
    access_config {
      nat_ip = google_compute_address.static.address
    }
  }

  metadata = {
    ssh-keys = "${var.username}:${file(var.public_key_path)}"
  }

  provisioner "remote-exec" {
    script = var.script_path

    connection {
      type        = "ssh"
      host        = google_compute_address.static.address
      user        = var.username
      private_key = file(var.private_key_path)
      timeout     = "2m"
    }
  }
}

resource "google_compute_address" "static" {
  name = var.public_ip_name
}

output "ip" {
  value = "${google_compute_address.static.address}"
}

output "instance_name" {
  value = "${google_compute_instance.vm_instance.name}"
}
