#############################
# Global
#############################

variable "namespace" {
  type        = string
  description = "Project name that will be use to identifiy the resources"
  default     = "my-project"
}

variable "stage" {
  type        = string
  description = "Stage/environment name to tag and suffix the infrastructure composants"
  default     = "dev"
}

#############################
# Location
#############################

variable "region" {
  type        = string
  description = "Default Region"
  default     = "us-east-1"
}

#############################
# Tags
#############################

variable "tags" {
  type        = map(string)
  description = "Default tags to associate to these resources"
  default = {
    BusinessUnit = "My Company"
    Team         = "DevOps"
    Terraform    = "true"
  }
}
