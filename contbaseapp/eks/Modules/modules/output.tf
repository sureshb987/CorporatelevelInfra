output "cluster_name" {
  value = aws_eks_cluster.corporateproject_eks.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.corporateproject_eks.endpoint
}

output "cluster_ca_certificate" {
  value = aws_eks_cluster.corporateproject_eks.certificate_authority[0].data
}

