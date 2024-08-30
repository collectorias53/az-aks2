variable "resource_group_name" {
  description = "The name of the resource group in which the resources are created."
  default     = "rg"
}

variable "location" {
  description = "The Azure region where the resources are created."
  default     = "Australia Central"
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster."
  default     = "az-aks"
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster."
  default     = "exampleaks5"
}


variable "node_count" {
  description = "The number of nodes in the default node pool."
  default     = 1
}

variable "vm_size" {
  description = "The size of the virtual machines in the default node pool."
  default     = "Standard_D2s_v3"
}
