terraform {
  backend "s3" {
    bucket         = "staff-technology-services-github-teams-core-tf-state"
    dynamodb_table = "staff-technology-services-github-teams-core-tf-lock-table"
    key            = "terraform.global.state"
    region         = "eu-west-2"
  }
}

provider "github" {
  token = var.github_token
  owner = var.github_owner
  alias = "mojo"
}

module "github_team" {
  source = "./modules/team"

  for_each = local.github_teams

  team_name         = each.key
  team_description  = each.value.description
  team_maintainers  = each.value.team_maintainers
  team_members      = each.value.team_members
  team_repositories = each.value.team_repositories
  permission        = each.value.permission

  providers = {
    github = github.mojo
  }
}
