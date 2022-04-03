data "digitalocean_kubernetes_versions" "this" {
  version_prefix = var.k8s_version_prefix
}

resource "local_file" "this" {
  content         = digitalocean_kubernetes_cluster.this.kube_config[0].raw_config
  filename        = var.kubeconfig_path
  file_permission = "600"
}

resource "digitalocean_kubernetes_cluster" "this" {
  name     = var.cluster_name
  region   = var.region
  vpc_uuid = var.vpc_uuid

  auto_upgrade  = var.auto_upgrade
  surge_upgrade = var.surge_upgrade

  version = data.digitalocean_kubernetes_versions.cluster.latest_version
  tags    = var.tags

  node_pool {
    name       = var.node_name
    size       = var.node_size
    auto_scale = var.node_autoscale
    min_nodes  = var.node_min
    max_nodes  = var.node_max
    node_count = var.node_count
    tags       = var.node_tags
  }
}

resource "local_file" "kubeconfig" {
  content         = digitalocean_kubernetes_cluster.this.kube_config[0].raw_config
  filename        = var.kubeconfig_path
  file_permission = "600"
}
