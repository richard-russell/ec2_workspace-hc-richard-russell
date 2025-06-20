terraform {
  backend "remote" {
    organization = "hashicorp-wwtfo-demo-platform-prod"
    workspaces {
      name = "ec2-workspace-o867"
    }
  }
}
