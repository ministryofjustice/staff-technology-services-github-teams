terraform {
  required_providers {
    github = {
      source = "integrations/github"
    }
  }
}

# Create a GitHub team
resource "github_team" "this_team" {
  name                      = var.team_name
  description               = join(" 🔖 ", [var.team_description, " Defined and maintained in Terraform"])
  privacy                   = var.privacy
  create_default_maintainer = true
}

# Some maintainers must be added
resource "github_team_membership" "this_team_maintainers" {
  for_each = toset(var.team_maintainers)
  team_id  = github_team.this_team.id
  username = each.value
  role     = "maintainer"
}

# Add team members
resource "github_team_membership" "this_team_members" {
  for_each = toset(var.team_members)
  team_id  = github_team.this_team.id
  username = each.value
  role     = "member"
}

# Add this team to some repositories with appropriate permissions
resource "github_team_repository" "this_team_repositories" {
  for_each   = toset(var.team_repositories)
  team_id    = github_team.this_team.id
  repository = each.value
  permission = var.permission
}
