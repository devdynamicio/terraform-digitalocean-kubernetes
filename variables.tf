variable "cluster_name" {
  type        = string
  description = "A name for the Kubernetes cluster."
}

variable "region" {
  type        = string
  default     = "fra1"
  description = "Cluster region"
}

variable "auto_upgrade" {
  type        = bool
  default     = false
  description = "A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window."
}

variable "surge_upgrade" {
  type        = bool
  default     = false
  description = "Cluster region"
}

variable "k8s_version_prefix" {
  type        = string
  default     = "1.19."
  description = "DO Kubernetes version prefix"
}

variable "tags" {
  type        = list(string)
  default     = []
  description = "Cluster tags"
}

variable "kubeconfig_path" {
  type        = string
  default     = "./kubeconfig"
  description = "Kubeconfig path"
}

variable "node_name" {
  type        = string
  default     = "autoscale-pool-01"
  description = "Node name"
}

variable "node_size" {
  type        = string
  default     = "s-2vcpu-2gb"
  description = "The slug identifier for the type of Droplet to be used as workers in the node pool."
}

variable "node_autoscale" {
  type        = bool
  default     = true
  description = "Node auto scale"
}

variable "node_min" {
  type        = number
  default     = 1
  description = "Min nodes"
}

variable "node_max" {
  type        = number
  default     = 3
  description = "Max nodes"
}

variable "node_tags" {
  type        = list(string)
  default     = []
  description = "Node tags"
}

variable "node_count" {
  type        = number
  default     = 1
  description = "Node count"
}

variable "vpc_uuid" {
  type        = string
  description = "VPC UUID"
  default     = null
}

variable "ha" {
  type        = bool
  default     = false
  description = " Enable/disable the high availability control plane for a cluster. High availability can only be set when creating a cluster. Any update will create a new cluster"
}
