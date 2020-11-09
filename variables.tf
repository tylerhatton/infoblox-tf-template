variable "vpc_id" {
  type        = string
  description = "ID of the VPC where the Infoblox server will reside."
}

variable "key_pair" {
  type        = string
  default     = ""
  description = "Name of key pair to SSH into Infoblox server."
}

variable "mgmt_subnet_id" {
  type        = string
  description = "ID of subnet where the Infoblox will reside."
}

variable "management_ip" {
  type        = string
  description = "ID of subnet where the Infoblox will reside."
}

variable "management_ip2" {
  type        = string
  description = "Second management IP of Infoblox for eth1 and used for the management GUI."
}

variable "default_tags" {
  type        = map
  default     = {}
  description = "Tags assigned to Infoblox instance."
}

variable "name_prefix" {
  default     = ""
  description = "Prefix added to name tags of provisioned resources."
}

variable "admin_password" {
  default     = ""
  description = "Admin password for Infoblox management GUI. Randomly generated if empty."
}

variable "remote_console_enabled" {
  default     = "y"
  description = "Enables and disables SSH console access for Infoblox."
}

variable "temp_license" {
  default     = "cloud vnios dns grid"
  description = "List of temporary licenses applied to Infoblox server."
}

variable "include_public_ip" {
  default     = false
  description = ""
}