# Digitalocean Kubernetes Terraform module

Terraform Module for create [DigitalOcean Kubernetes](https://www.digitalocean.com/products/kubernetes) service.

[![SWUbanner](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner2-direct.svg)](https://github.com/vshymanskyy/StandWithUkraine/blob/main/docs/README.md)

## Requirements

This module requires Terraform version `0.13.0` or newer.

## Examples

```hcl
module "kubernetes" {
  source             = "../../"
  cluster_name       = "k8s-example"
  region             = "fra1"
  node_count         = 1
  node_size          = "s-2vcpu-4gb"
  k8s_version_prefix = "1.21."
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | >= 2.19.0 |
| <a name="requirement_local"></a> [local](#requirement\_local) | >= 2.2.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | >= 2.19.0 |
| <a name="provider_local"></a> [local](#provider\_local) | >= 2.2.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_kubernetes_cluster.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/kubernetes_cluster) | resource |
| [local_file.this](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [digitalocean_kubernetes_versions.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/kubernetes_versions) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_upgrade"></a> [auto\_upgrade](#input\_auto\_upgrade) | A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window. | `bool` | `false` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | A name for the Kubernetes cluster. | `string` | n/a | yes |
| <a name="input_ha"></a> [ha](#input\_ha) | Enable/disable the high availability control plane for a cluster. High availability can only be set when creating a cluster. Any update will create a new cluster | `bool` | `false` | no |
| <a name="input_k8s_version_prefix"></a> [k8s\_version\_prefix](#input\_k8s\_version\_prefix) | DO Kubernetes version prefix | `string` | `"1.19."` | no |
| <a name="input_kubeconfig_path"></a> [kubeconfig\_path](#input\_kubeconfig\_path) | Kubeconfig path | `string` | `"./kubeconfig"` | no |
| <a name="input_node_autoscale"></a> [node\_autoscale](#input\_node\_autoscale) | Node auto scale | `bool` | `true` | no |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | Node count | `number` | `1` | no |
| <a name="input_node_max"></a> [node\_max](#input\_node\_max) | Max nodes | `number` | `3` | no |
| <a name="input_node_min"></a> [node\_min](#input\_node\_min) | Min nodes | `number` | `1` | no |
| <a name="input_node_name"></a> [node\_name](#input\_node\_name) | Node name | `string` | `"autoscale-pool-01"` | no |
| <a name="input_node_size"></a> [node\_size](#input\_node\_size) | The slug identifier for the type of Droplet to be used as workers in the node pool. | `string` | `"s-2vcpu-2gb"` | no |
| <a name="input_node_tags"></a> [node\_tags](#input\_node\_tags) | Node tags | `list(string)` | `[]` | no |
| <a name="input_region"></a> [region](#input\_region) | Cluster region | `string` | `"fra1"` | no |
| <a name="input_surge_upgrade"></a> [surge\_upgrade](#input\_surge\_upgrade) | Cluster region | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Cluster tags | `list(string)` | `[]` | no |
| <a name="input_vpc_uuid"></a> [vpc\_uuid](#input\_vpc\_uuid) | VPC UUID | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_certificate"></a> [client\_certificate](#output\_client\_certificate) | client\_certificate in base64 |
| <a name="output_client_key"></a> [client\_key](#output\_client\_key) | client\_key in base64 |
| <a name="output_cluster_ca_certificate"></a> [cluster\_ca\_certificate](#output\_cluster\_ca\_certificate) | cluster\_ca\_certificate in base64 |
| <a name="output_host"></a> [host](#output\_host) | host |
| <a name="output_id"></a> [id](#output\_id) | id |
| <a name="output_kubeconfig"></a> [kubeconfig](#output\_kubeconfig) | kubeconfig |
| <a name="output_token"></a> [token](#output\_token) | token |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
