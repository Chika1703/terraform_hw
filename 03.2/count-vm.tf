resource "twc_server" "web" {
  count = 2
  name  = "web-${count.index + 1}"
  preset_id = var.web_preset_id
  project_id = var.project_id
  os_id = var.os_id
  availability_zone = var.availability_zone
  ssh_keys_ids = var.ssh_keys_ids
}
