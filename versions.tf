terraform {
  required_version = "1.5.4"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.5.0"
    }
  }
}
