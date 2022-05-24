locals {
  github_teams = {
    technology-services-cloud-operations-admins = {
      description = "To provide administrator access of various repos to Cloud Operations team."
      team_maintainers = [
        "mTouhid",
        "ASTRobinson"
      ]
      team_members = [
        "wanieldilson",
        "mitchdawson1982"
      ]
      team_repositories = [
        "cloud-operations",
        "cloud-operations-github-actions",
        "cloud-operations-slack-bot",
        "mojo-aws-github-oidc-provider"
      ]
      permission = "admin"
    }
  }
}
