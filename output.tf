// Module: terraform-aws-cloudinit
// Descriprion: module output block
//

output "userdata" {
  value = "${data.cloudinit_config.cloudinit_userdata.rendered}"
}
