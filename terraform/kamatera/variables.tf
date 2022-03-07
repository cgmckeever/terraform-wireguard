variable "ssh_public_key" {
  type        = string
  description = "The SSH key used to access the wireguard server."
}

variable "region" {
  type        = string
  description = "The wireguard server's desired region. Valid regions at https://www.kamatera.com/Global_Data_Centers#page_383, to get region ids use their cli and run cloudcli server options --datacenter."
}

variable "clients" {
  type        = map(string)
  description = "Map of client names to ip addresses. Must be in the 10.10.10/24 subnet, and 10.10.10.1 is reserved for the server."
  default = {
    "default" = "10.10.10.2"
  }
}

variable "secret_id" {
  type        = string
  description = "Tencent secret id."
}

variable "secret_key" {
  type        = string
  description = "Tencent secret key."
}
