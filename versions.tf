terraform {
  required_version = "1.2.1"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.44.0"
    }
  }
}
