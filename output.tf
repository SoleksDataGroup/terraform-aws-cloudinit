// Module: terraform-aws-cloudinit
// Descriprion: module output block
//

output "cloudinit_userdata" {
  value = "${data.cloudinit_config.cloudinit_userdata.rendered}"
}
