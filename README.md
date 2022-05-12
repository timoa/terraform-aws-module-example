# Terraform AWS module example

[![Latest Release][release-badge]][release-url]
[![Build Status][github-badge]][github-url]
[![License][license-badge]][license-url]

A Terraform module uses as a template to start new module.

It includes all the automation (versioning, providers update, lint, security) and best practices from HashiCorp.

* [Pre-commit][pre-commit-url]: enforce checks on the module before commit
* [Semantic Release][semantic-release-url]: automate the release and version process
* [Reviewdog][reviewdog-url]: automate the review process with per code line comments (TFLint & TFSec checks)
* [Renovate][renovate-url]: automate the dependency management (update provider version, etc.)
* [ShiftLeft SCAN][shiftleft-scan-url]: security audit tool to detect security flaws in application and infrastructure code

## Usage

### Integrate the module into your Terraform project

If you want to use this module inside your project, you can use the following code (change the tag to match the latest version):

```bash
module "module-template" {
  source = "git::https://github.com/timoa/terraform-aws-module-example.git?ref=tags/0.0.2"

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

[github-badge]: https://github.com/timoa/terraform-aws-module-example/workflows/Terraform/badge.svg
[github-url]: https://github.com/timoa/terraform-aws-module-example/actions?query=workflow%3ATerraform
[release-badge]: https://img.shields.io/github/release/timoa/terraform-aws-module-example.svg
[release-url]: https://github.com/timoa/terraform-aws-module-example/releases/latest
[license-badge]: https://img.shields.io/github/license/timoa/terraform-aws-module-example.svg
[license-url]: https://github.com/timoa/terraform-aws-module-example/blob/main/LICENSE
[pre-commit-url]: https://pre-commit.com/
[semantic-release-url]: https://semantic-release.gitbook.io/semantic-release/
[reviewdog-url]: https://github.com/reviewdog/reviewdog
[renovate-url]: https://www.whitesourcesoftware.com/free-developer-tools/renovate/
[shiftleft-scan-url]: https://shiftleft.io/docs/scan/
