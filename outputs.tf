output "kubeconfig" {
  value       = digitalocean_kubernetes_cluster.this.kube_config[0].raw_config
  description = "kubeconfig"
  sensitive   = true
}

output "id" {
  value       = digitalocean_kubernetes_cluster.this.id
  description = "id"
}

output "host" {
  value       = digitalocean_kubernetes_cluster.this.kube_config[0].host
  description = "host"
  sensitive   = true
}

output "token" {
  value       = digitalocean_kubernetes_cluster.this.kube_config[0].token
  description = "token"
  sensitive   = true
}

output "cluster_ca_certificate" {
  value       = digitalocean_kubernetes_cluster.this.kube_config[0].cluster_ca_certificate
  description = "cluster_ca_certificate in base64"
  sensitive   = true
}

output "client_key" {
  value       = digitalocean_kubernetes_cluster.this.kube_config[0].client_key
  description = "client_key in base64"
  sensitive   = true
}

output "client_certificate" {
  value       = digitalocean_kubernetes_cluster.this.kube_config[0].client_certificate
  description = "client_certificate in base64"
  sensitive   = true
}
