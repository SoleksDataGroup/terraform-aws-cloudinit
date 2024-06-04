output "userdata" {
  value = templatefile("templates/cloudinit.yaml.tftpl", { cloudinit_userdata = var.cloudinit_userdata})
}
