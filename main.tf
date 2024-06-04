// Module: terraform-aws-cloudinit
// Descriprion: module main block
//

data "cloudinit_config" "cloudinit_userdata" {
  gzip = var.gzip
  base64_encode = var.base64_encode

  part {
    content_type = "text/cloud-config"
    content = templatefile("templates/cloudinit.yaml.tftpl", { cloudinit_userdata = var.cloudinit_userdata})
  }
}
