variable "team_name" {
  type = string
}

variable "team_description" {
  type = string
}

variable "privacy" {
  type    = string
  default = "closed"
}

variable "team_maintainers" {
  type    = list(string)
  default = []
}

variable "team_members" {
  type    = list(string)
  default = []
}

variable "team_repositories" {
  type    = list(string)
  default = []
}

variable "permission" {
  type = string
}
