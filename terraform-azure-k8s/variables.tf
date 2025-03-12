variable "cluster_name" {
  description = "The name of the Kubernetes cluster"
  type        = string
  default     = "k8s-cluster"
}

variable "location" {
  description = "The Azure region where the resources will be created"
  type        = string
  default     = "Germany West Central"
}

variable "node_count" {
  description = "The number of nodes in the Kubernetes cluster"
  type        = number
  default     = 1
}

variable "node_size" {
  description = "The size of the nodes in the Kubernetes cluster"
  type        = string
  default     = "Standard_D4ds_v5"
}

variable "kubernetes_version" {
  description = "The version of Kubernetes to use"
  type        = string
  default     = "1.31.5"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-k8s"
}

variable "subscription_id" {
  description = "The Azure subscription ID"
  type        = string
  default     = "6e33624e-e52c-4cbe-bd14-5714a1116de8"
}

variable "tenant_id" {
  description = "The Azure tenant ID"
  type        = string
  default     = "74e90b42-d2a4-4580-8e00-bad008a2aaed"
}

variable "client_id" {
  description = "The Azure client ID"
  type        = string
  default     = "0259cc8a-0ea6-4998-914d-c100aec86a1c"
}

variable "client_secret" {
  description = "The Azure client secret"
  type        = string
}
variable "dns_prefix" {
  description = "The DNS prefix for the Kubernetes cluster"
  type        = string
  default     = "skt"
}