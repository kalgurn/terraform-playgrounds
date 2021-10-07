output "endpoint" {
  value       = aws_eks_cluster.example.endpoint
  description = "EKS cluster endpoint."
}

output "kubeconfig-certificate-authority-data" {
  value       = aws_eks_cluster.example.certificate_authority[0].data
  description = "Base64 encoded certificate data required to communicate with your cluster. Add this to the certificate-authority-data section of the kubeconfig file for your cluster."
}