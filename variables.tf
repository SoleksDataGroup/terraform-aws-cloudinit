// Module: terraform-aws-cloudinit
// Descriprion: module input variables block
//

variable "gzip" {
  description = "Compress cloudinit userdata (true/false)"
  type = bool
  default = true
}

variable "base64_encode" {
  description = "Encode cloudinit userdata (true/false)"
  type = bool
  default = true
}

variable "cloudint_userdata" {
  description = "Cloudinit userdata"
  type = object({
    groups = optional(list(string))
    users = optional(list(object({
      name = string
      primary_group = optional(string)
      shell = optional(string)
      sudo = optional(string)
      ssh-authorized-keys = optional(string)
    })))
  })
  default = {}
}
