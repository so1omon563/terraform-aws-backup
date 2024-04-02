# SNS Topic

Basic quickstart for creating a SNS Topic resource.

Example shows using Default Tags in the provider as well as passing additional tags into the resource.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## Examples

```hcl
provider "aws" {
  default_tags {
    tags = {
      environment = "dev"
      terraform   = "true"
    }
  }
}

# module "sns_topic" {
#   source  = "so1omon563/sns/aws"
#   version = "2.0.0" # Replace with appropriate version

#   name         = "example-topic"
#   topic_prefix = "my-product-name"
#   tags = {
#     example = "true"
#   }
# }
# output "sns_topic" { value = module.sns_topic }
```

## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
