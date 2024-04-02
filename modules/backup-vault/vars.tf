variable "name" {
  type        = string
  description = "Short, descriptive name of the environment. All resources will be named using this value as a prefix. Either this variable, or `vault_name_override` must be set."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "A map of tag names and values for tags to apply to all taggable resources created by the module. Default value is a blank map to allow for using Default Tags in the provider."
  default     = {}
}

variable "force_destroy" {
  type        = bool
  description = "A boolean that indicates that all recovery points stored in the vault are deleted so that the vault can be destroyed without error."
  default     = false
}

variable "kms_key_arn" {
  type        = string
  description = "The server-side encryption key that is used to protect your backups. If none is provided, the vault will be encrypted using the default `aws/backkup` key in your account."
  default     = null
}

variable "vault_name_override" {
  description = "Used if there is a need to specify a vault name outside of the module's standardized nomenclature. For example, if importing a topic that doesn't follow the standard naming formats."
  type        = string
  default     = null
}
