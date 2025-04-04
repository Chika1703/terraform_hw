resource "twc_server" "storage" {
  name              = "storage"
  os_id             = var.os_id
  preset_id         = var.web_preset_id
  project_id        = var.project_id
  availability_zone = var.availability_zone
  ssh_keys_ids      = var.ssh_keys_ids
}

resource "twc_server_disk" "additional_disks" {
  count             = 3
  depends_on       = [twc_server.storage]
  source_server_id  = twc_server.storage.id
  size              = 5120
}
