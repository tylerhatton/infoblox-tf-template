Infoblox Terraform Module
===========

A Terraform module to provide a Infoblox DDI server in AWS.

Module Input Variables
----------------------

- `aws_region` - AWS Region location of Infoblox server.
- `vpc_id` - ID of the VPC where the Infoblox server will reside.
- `key_pair` - Name of key pair to SSH into Infoblox server.
- `mgmt_subnet_id` - ID of subnet where the Infoblox will reside.
- `management_ip` - First management IP of Infoblox used for eth0.
- `management_ip2` - Second management IP of Infoblox for eth1 and used for the management GUI.
- `default_tags` - Tags assigned to Infoblox instance.
- `name_prefix` - Prefix added to name tags of provisioned resources.
- `admin_password` - Admin password for Infoblox management GUI.
- `remote_console_enabled` - Enables and disables SSH console access for Infoblox.
- `temp_license` - List of temporary licenses applied to Infoblox server.
- `include_public_ip` - Adds an EIP to the Infoblox server. true or false.

Usage
-----

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


Outputs
=======

 - `infoblox_mgmt_ip` - Public IP of Infoblox server.
 - `infoblox_admin_password` - Admin password for Infoblox management GUI.


Authors
=======

tyler.hatton@wwt.com