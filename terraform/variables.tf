variable "location" {
  type    = string
  default = "eastus2"
}

variable "storageAccountName" {
  type    = string
  default = "sarlacherterraform"
}

variable "containerName" {
  type    = string
  default = "datalake"
}

variable "tags" {
  type = map(string)
}