provider "github" {
  token = var.github_token
  owner = var.github_owner
  alias = "mojo"
}

module "test_team_delete_me" {
  source = "./modules/team"

  team_name        = "test-team-please-delete-me-too"
  team_description = "This is a test team. Please delete me."
  team_maintainers = ["ASTRobinson"]
  team_members     = ["wanieldilson", "mitchdawson1982"]

  team_repositories = ["cloud-operations"]
  permission        = "admin"

  providers = {
    github = github.mojo
  }
}
