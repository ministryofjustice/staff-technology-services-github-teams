locals {
  github_teams = {
    test-team-please-delete-me-too = {
      description = "This is a test team. Please delete me."
      team_maintainers = [
        "ASTRobinson"
      ]
      team_members = [
        "wanieldilson",
        "mitchdawson1982"
      ]
      team_repositories = [
        "cloud-operations"
      ]
      permission = "admin"
    }
  }
}
