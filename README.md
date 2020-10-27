# Infoblox Terraform Module

A Terraform module to provide a Infoblox DDI server in AWS.

![Desktop Picture](/images/1.png)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.12 |
| aws | ~> 2.3 |

## Providers

| Name | Version |
|------|---------|
| random | n/a |
| template | n/a |
| aws | ~> 2.3 |

## Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| aws\_region | AWS Region location of Infoblox server. | `string` | n/a |
| vpc\_id | ID of the VPC where the Infoblox server will reside. | `string` | n/a |
| key\_pair | Name of key pair to SSH into Infoblox server. | `string` | `""` |
| mgmt\_subnet\_id | ID of subnet where the Infoblox will reside. | `string` | n/a |
| management\_ip | ID of subnet where the Infoblox will reside. | `string` | n/a |
| management\_ip2 | Second management IP of Infoblox for eth1 and used for the management GUI. | `string` | n/a |
| default\_tags | Tags assigned to Infoblox instance. | `map` | `{}` |
| name\_prefix | Prefix added to name tags of provisioned resources. | `string` | `""` |
| admin\_password | Admin password for Infoblox management GUI. Randomly generated if empty. | `string` | `""` |
| remote\_console\_enabled | Enables and disables SSH console access for Infoblox. | `string` | `"y"` |
| temp\_license | List of temporary licenses applied to Infoblox server. | `string` | `"cloud vnios dns grid"` |
| include\_public\_ip | n/a | `bool` | `false` |

## Outputs

| Name | Description |
|------|-------------|
| infoblox\_mgmt\_ip | The public IP address of the Infoblox mgmt console. |
| infoblox\_admin\_password | The admin password for the Infoblox mgmt console. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Usage

```hcl
module "infoblox" {
  source             = "git@github.com:wwt/infoblox-tf-template.git"
  aws_region         = "us-west-1"
  key_pair           = "test_key"
  name_prefix        = terraform.workspace

  vpc_id             = "vpc-09072e62ba8e0dfc0"
  mgmt_subnet_id     = "subnet-0c1c74a9b2a25646c"

  management_ip      = "10.128.30.104"
  management_ip2     = "10.128.30.105"

  include_public_ip  = true
}
```

## Authors

tyler.hatton@wwt.com