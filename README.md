[![repo standards badge](https://img.shields.io/badge/dynamic/json?color=blue&style=for-the-badge&logo=github&label=MoJ%20Compliant&query=%24.result&url=https%3A%2F%2Foperations-engineering-reports.cloud-platform.service.justice.gov.uk%2Fapi%2Fv1%2Fcompliant_public_repositories%2Fcloud-operations-github-actions)](https://operations-engineering-reports.cloud-platform.service.justice.gov.uk/public-github-repositories.html#cloud-operations-github-actions "Link to report")


[![Terraform CI](https://github.com/ministryofjustice/staff-technology-services-github-teams/actions/workflows/terraform-ci.yaml/badge.svg)](https://github.com/ministryofjustice/staff-technology-services-github-teams/actions/workflows/terraform-ci.yaml)

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

## How to run this terraform locally?

If you wish to run this terraform locally, make sure the value for `AWS_PROFILE` in the `.env` file is set to MoJO Shared Services AWS Cli profile.

Create a personal GitHub token and provide as value for `github_token` in the `terraform.tfvars` file.

Tip: Feel free to copy `.env.example` to `.env` and `terraform.tfvars.example` to `terraform.tfvars`.

Make sure you are using the terraform workspace called `github`.

```
make workspace
```

Then use Makefile targets to run the terraform locally:

```
make apply
```
