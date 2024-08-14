# EKS cluster Input Variables
variable "cluster_name" {
    description = "EKS Cluster Name"
    type        = string
    default     = "eks-cluster"
  }

variable "cluster_service_ipv4_cidr" {
  description = "The CIDR block for the EKS cluster"
  type        = string
}

variable "cluster_version" {
  description = "The Kubernetes version for the EKS cluster"
  type        = string
}

variable "cluster_endpoint_private_access" {
  description = "Enable or disable private access to the Kubernetes API server"
  type        = bool
}

variable "cluster_endpoint_public_access" {
  description = "Enable or disable public access to the Kubernetes API server"
  type        = bool
}

variable "cluster_endpoint_public_access_cidrs" {
  description = "CIDR blocks that can access the Kubernetes API server endpoint"
  type        = list(string)
}