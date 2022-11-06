<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |
| <a name="requirement_local"></a> [local](#requirement\_local) | 2.2.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.38.0 |
| <a name="provider_local"></a> [local](#provider\_local) | 2.2.3 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_payload_1"></a> [payload\_1](#module\_payload\_1) | ./modules/jq-get-data | n/a |
| <a name="module_payload_2"></a> [payload\_2](#module\_payload\_2) | ./modules/jq-get-data | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.data](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [local_file.foo](https://registry.terraform.io/providers/hashicorp/local/2.2.3/docs/resources/file) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_user_vars"></a> [user\_vars](#input\_user\_vars) | n/a | `map` | <pre>{<br>  "id": 3,<br>  "username": "tester"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_payload_1"></a> [payload\_1](#output\_payload\_1) | n/a |
| <a name="output_payload_2"></a> [payload\_2](#output\_payload\_2) | n/a |
<!-- END_TF_DOCS -->