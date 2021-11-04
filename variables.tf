variable "kubernetes_cluster_id" {
  type = string
  description = "(Required) The ID of the Kubernetes Cluster where this Node Pool should exist. Changing this forces a new resource to be created."
}

variable "name" {
  type = string
  description = "(Required) The name of the Node Pool which should be created within the Kubernetes Cluster. Changing this forces a new resource to be created."
}

variable "vm_size" {
  type = string
  description = "(Required) The SKU which should be used for the Virtual Machines used in this Node Pool. Changing this forces a new resource to be created."
  default = "Standard_DS2_v2"
}

variable "vnet_subnet_id" {
  type = string
  description = "(Optional) The ID of the Subnet where this Node Pool should exist."
}

variable "enable_node_public_ip" {
  type = bool
  description = "(Optional) Should each node have a Public IP Address? Defaults to false. Changing this forces a new resource to be created."
  default = false
}

variable "type" {
  type = string
  description = "The type of Default Node Pool for the Kubernetes Cluster must be VirtualMachineScaleSets to attach multiple node pools."
  default = "VirtualMachineScaleSets"
}

variable "max_count" {
  type = number
  description = "(Required) The maximum number of nodes which should exist within this Node Pool. Valid values are between 0 and 1000 and must be greater than or equal to min_count."
  default = 1
}

variable "min_count" {
  type = number
  description = "(Required) The minimum number of nodes which should exist within this Node Pool. Valid values are between 0 and 1000 and must be less than or equal to max_count."
  default = 5
}