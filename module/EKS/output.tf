output "cluster_id" {
  description = "EKS cluster ID"
  value       = aws_eks_cluster.Project_eks.id
}

output "cluster_name" {
  description = "EKS cluster name"
  value       = aws_eks_cluster.Project_eks.name
}