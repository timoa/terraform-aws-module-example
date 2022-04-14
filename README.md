# Terraform module template

[![Latest Release][release-badge]][release-url]
[![Build Status][github-badge]][github-url]
[![License][license-badge]][license-url]

A Terraform module uses as a template to start new module.

It includes all the automation (versioning, providers update, lint, security) and best practices from HashiCorp.

* [Pre-commit][pre-commit-url]: enforce checks on the module before commit
* [Semantic Release][semantic-release-url]: automate the release and version process
* [Renovate][renovate-url]: automate the dependency management (update provider version, etc.)
* [ShiftLeft SCAN][shiftleft-scan-url]: security audit tool to detect security flaws in application and infrastructure code

## Usage

### Integrate the module into your Terraform project

If you want to use this module inside your project, you can use the following code (change the tag to match the latest version):

```bash
module "module-template" {
  source = "git::https://github.com/timoa/terraform-module-aws-example.git?ref=tags/0.0.2"

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
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.9.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.9.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/4.9.0/docs/data-sources/availability_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Project name that will be use to identifiy the resources | `string` | `"my-project"` | no |
| <a name="input_region"></a> [region](#input\_region) | Default Region | `string` | `"us-east-1"` | no |
| <a name="input_stage"></a> [stage](#input\_stage) | Stage/environment name to tag and suffix the infrastructure composants | `string` | `"dev"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to associate to these resources | `map(string)` | <pre>{<br>  "BusinessUnit": "My Company",<br>  "Team": "DevOps",<br>  "Terraform": "true"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_available_zones"></a> [available\_zones](#output\_available\_zones) | Return the list of available zones |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

[github-badge]: https://github.com/timoa/terraform-module-aws-example/workflows/Terraform/badge.svg
[github-url]: https://github.com/timoa/terraform-module-aws-example/actions?query=workflow%3ATerraform
[release-badge]: https://img.shields.io/github/release/timoa/terraform-module-aws-example.svg
[release-url]: https://github.com/timoa/terraform-module-aws-example/releases/latest
[license-badge]: https://img.shields.io/github/license/timoa/terraform-module-aws-example.svg
[license-url]: https://github.com/timoa/terraform-module-aws-example/blob/main/LICENSE
[pre-commit-url]: https://pre-commit.com/
[semantic-release-url]: https://semantic-release.gitbook.io/semantic-release/
[renovate-url]: https://www.whitesourcesoftware.com/free-developer-tools/renovate/
[shiftleft-scan-url]: https://shiftleft.io/docs/scan/
