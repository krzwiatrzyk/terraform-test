<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_jq"></a> [jq](#requirement\_jq) | 0.2.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_jq"></a> [jq](#provider\_jq) | 0.2.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [jq_query.data](https://registry.terraform.io/providers/massdriver-cloud/jq/0.2.1/docs/data-sources/query) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_payload"></a> [payload](#input\_payload) | This is a REST API payload. | `map` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_data"></a> [data](#output\_data) | Data from REST API payload. |
<!-- END_TF_DOCS -->