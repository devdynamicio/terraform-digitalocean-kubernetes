# Digitalocean Kubernetes Terraform module

Terraform Module for create [DigitalOcean Kubernetes](https://www.digitalocean.com/products/kubernetes) service.

[![SWUbanner](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner2-direct.svg)](https://github.com/vshymanskyy/StandWithUkraine/blob/main/docs/README.md)

## Requirements

This module requires Terraform version `0.13.0` or newer.

## Examples

```hcl

module "k8s" {
  cluster_name = "cluster-name"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| digitalocean | 2.4.0 |

## Providers

| Name | Version |
|------|---------|
| digitalocean | 2.4.0 |
| local | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| auto\_upgrade | A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window. | `bool` | `false` | no |
| cluster\_name | A name for the Kubernetes cluster. | `string` | n/a | yes |
| k8s\_version\_prefix | DO Kubernetes version prefix | `string` | `"1.18."` | no |
| kubeconfig\_path | Kubeconfig path | `string` | `"./kubeconfig"` | no |
| node\_autoscale | Node auto scale | `bool` | `true` | no |
| node\_count | Node count | `number` | `1` | no |
| node\_max | Max nodes | `number` | `2` | no |
| node\_min | Min nodes | `number` | `1` | no |
| node\_name | Node name | `string` | `"autoscale-pool-01"` | no |
| node\_size | The slug identifier for the type of Droplet to be used as workers in the node pool. | `string` | `"s-2vcpu-2gb"` | no |
| node\_tags | Node tags | `list(string)` | `[]` | no |
| region | Cluster region | `string` | `"fra1"` | no |
| surge\_upgrade | Cluster region | `bool` | `false` | no |
| tags | Cluster tags | `list(string)` | `[]` | no |
| vpc\_uuid | VPC UUID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| client\_certificate | client\_certificate in base64 |
| client\_key | client\_key in base64 |
| cluster\_ca\_certificate | cluster\_ca\_certificate in base64 |
| host | host |
| id | id |
| kubeconfig | kubeconfig |
| token | token |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
