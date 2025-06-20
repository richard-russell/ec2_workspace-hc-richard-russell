  ## variables.tf

## This file is for variables you would like the user to provide when deploying
## the demo. Put `ddr_` variables in ddr-variables.tf.


variable "hcptf_organization" {
  type        = string
  description = "HCP Terraform base organization"
  default     = null
}

variable "hcptf_project_name" {
  type        = string
  description = "HCP Terraform project name"
  default     = null
}

variable "hcptf_workspace_name" {
  type        = string
  description = "HCP Terraform workspace name"
  default     = null
}

variable "instance_type" {
  description = "AWS EC2 instance type"
  default     = "t2.micro"
}

variable "env" {
  type        = string
  description = "DDR Demo platform environment"
  default     = null
}

variable "customer_name" {
  type        = string
  description = "Specify the name of your customer. This helps to customize the resources created for your customer."
  default     = ""
}

variable "aws_region" {
  type        = string
  description = "AWS Region used by the AWS provider name to deploy resources in."
  default     = "us-west-2"
}

variable "github_app_installation_id" {
  type = string
  #type    = map(string)
  default = null
}

variable "tfc_project_name" {
  type    = string
  default = null
}

