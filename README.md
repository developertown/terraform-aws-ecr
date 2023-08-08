<!-- BEGIN_TF_DOCS -->
# terraform-aws-ecr

This module manage the AWS ECR repository.

## Usage

### Basic

```hcl
include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../..//."
}

inputs = {
  enabled = true

  region      = "us-east-2"
  environment = "test"

  repositories = ["test-repo-1"]

  tags = {
    "Company" = "DeveloperTown"
  }
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.36.1 |

## Resources

| Name | Type |
|------|------|
| [aws_ecr_lifecycle_policy.expireimages](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_lifecycle_policy) | resource |
| [aws_ecr_replication_configuration.replication](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_replication_configuration) | resource |
| [aws_ecr_repository.repository](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |
| [aws_ecr_repository_policy.repository](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_aws_account_access"></a> [additional\_aws\_account\_access](#input\_additional\_aws\_account\_access) | Additional aws accounts with readonly access to the repositories | `list(string)` | `[]` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Set to false to prevent the module from creating any resources | `bool` | `null` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | ID element. Usually used for region e.g. 'uw2', 'us-west-2', OR role 'prod', 'staging', 'dev', 'UAT' | `string` | `null` | no |
| <a name="input_image_retention_count"></a> [image\_retention\_count](#input\_image\_retention\_count) | The number of tagged images to retain | `number` | `60` | no |
| <a name="input_name"></a> [name](#input\_name) | ID element. Usually the component or solution name, e.g. 'app' or 'jenkins'.<br>This is the only ID element not also included as a `tag`.<br>The "name" tag is set to the full `id` string. There is no tag with the value of the `name` input. | `string` | `"ecs-cluster"` | no |
| <a name="input_region"></a> [region](#input\_region) | The region in which the resources will be created | `string` | `null` | no |
| <a name="input_repositories"></a> [repositories](#input\_repositories) | The ECR repositories to create | `list(string)` | `[]` | no |
| <a name="input_role_arn"></a> [role\_arn](#input\_role\_arn) | The ARN of the role that will be assumed to create the resources in this module | `string` | `null` | no |
| <a name="input_suffix"></a> [suffix](#input\_suffix) | Suffix to be added to the name of each resource | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags (e.g. `{'Unit': 'XYZ'}`).<br>Neither the tag keys nor the tag values will be modified by this module. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repositories"></a> [repositories](#output\_repositories) | n/a |
<!-- END_TF_DOCS -->