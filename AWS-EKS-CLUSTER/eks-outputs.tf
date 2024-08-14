# EKS Cluster Outputs

output "cluster_id" {
    description = "EKS Cluster Name/ID"
    value       = aws_eks_cluster.eks_cluster.id
}

output "cluster_arn" {
    description = "EKS Cluster ARN"
    value       = aws_eks_cluster.eks_cluster.arn
}

output "cluster_certificate_authority_data" {
    description = "Base64 encoded certificate data required to communicate with the cluster"
    value = aws_eks_cluster.eks_cluster.certificate_authority[0].data
}

output "cluster_endpoint" {
    description = "Endpoint for your Kubernetes API server."
    value = aws_eks_cluster.eks_cluster.endpoint
}

output "cluster_version" {
    description = "The Kubernetes version for the cluster"
    value = aws_eks_cluster.eks_cluster.version
}

output "cluster_security_group_id" {
    description = "Security group ids attached to the cluster control plane"
    value = [aws_eks_cluster.eks_cluster.vpc_config[0].security_group_ids]
}

output "cluster_iam_role_name" {
    description = "IAM Role name of the EKS Cluster"
    value = aws_iam_role.eks_master_role.name
}

output "cluster_iam_role_arn" {
    description = "IAM Role ARN of the EKS Cluster"
    value = aws_iam_role.eks_master_role.arn
}

output "cluster_oidc_issuer_url" {
    description = "The URL on the EKS cluster OIDC Issuer"
    value = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
}

output "cluster_primary_security_group_id" {
    description = "The ID of the EKS Cluster Security Group"
    value = aws_eks_cluster.eks_cluster.vpc_config[0].cluster_security_group_id
}

# EKS Node Group Outputs (Public)

output "node_group_public_id" {
    description = "Public EKS Node Group Name/ID"
    value = aws_eks_node_group.eks_ng_public.id
}

output "node_group_public_arn" {
    description = "Public EKS Node Group ARN"
    value = aws_eks_node_group.eks_ng_public.arn
}

output "node_group_public_status" {
    description = "Public EKS Node Group Status"
    value = aws_eks_node_group.eks_ng_public.status
}

output "node_group_public_version" {
    description = "Public EKS Node Group Kubernetes Version"
    value = aws_eks_node_group.eks_ng_public.version
}

# EKS Node Group Outputs (Private)


output "node_group_private_id" {
  description = "Node Group 1 ID"
  value       = aws_eks_node_group.eks_ng_private.id
}

output "node_group_private_arn" {
  description = "Private Node Group ARN"
  value       = aws_eks_node_group.eks_ng_private.arn
}

output "node_group_private_status" {
  description = "Private Node Group status"
  value       = aws_eks_node_group.eks_ng_private.status 
}

output "node_group_private_version" {
  description = "Private Node Group Kubernetes Version"
  value       = aws_eks_node_group.eks_ng_private.version
}
