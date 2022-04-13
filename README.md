# Terraform module template

A Terraform module uses as a template to start new module.

It includes all the automation (versioning, providers update, lint, security) and best practices from HashiCorp.

## Usage

### Integrate the module into your Terraform project

If you want to use this module inside your project, you can use the following code (change the tag to match the latest version):

```bash
module "module-template" {
  source = "git::https://github.com/timoa/terraform-module-aws-template.git?ref=tags/0.0.2"

  # Required
  region    = "us-east-1"

  # Optional
  namespace = "my-project"
  stage     = "prod"
}
```

### Output example

```bash
terraform init
terraform plan
```

```bash
Changes to Outputs:
  + available_zones = [
      + "us-east-1a",
      + "us-east-1b",
      + "us-east-1c",
      + "us-east-1d",
      + "us-east-1e",
      + "us-east-1f",
    ]

You can apply this plan to save these new output values to the Terraform
state, without changing any real infrastructure.
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |

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
