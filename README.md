# Staff Technology Services GitHub Teams

Terraform to define and maintain a list of GitHub team for the Technology Services team.

## How to add a new team?

Add a new item in the `github_teams` value in the `locals` in `teams.tf` file. Use the below as guide.

```
<name-of-the-team> = {
  description = "Description of the team"
  team_maintainers = [
    "<github_username>"
  ]
  team_members = [
    "<github_username1>",
    "<github_username2>"
  ]
  team_repositories = [
    "<repositories>"
  ]
  permission = "admin" # Must be one of `pull`, `triage`, `push`, `maintain`, or `admin`
}
```

Create a new PR to this repo. Once the PR has been merged, the new team will be created.
