// Module: terraform-aws-cloudinit
// Descriprion: module input variables
//

variable "groups" {
  descirption = "List of the groups to be created by the module"
  type = list(string)
  default = []
}

variable "users" {
  description = "List of the users to be created by the module"
  type = list(object({
    name = string
    primary_group = optional(string)
    shell = optional(string)
    sudo = optional(string)
    ssh-authorized-keys = optional(string)
  }))
  default = []
}
