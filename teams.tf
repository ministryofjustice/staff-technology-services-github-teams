locals {
  common_team_repositories_for_all_groups = [
    "PaloAlto-pipelines",
    "cloud-operations-slack-bot",
    "deployment-tgw",
    "diso-devops-ami-builder",
    "diso-devops-module-ssm-bastion",
    "juniper-mist-integration",
    "juniper-mist-integration-spike",
    "linuxify",
    "mojo-aws-github-oidc-provider",
    "network-access-control-admin",
    "network-access-control-disaster-recovery",
    "network-access-control-infrastructure",
    "network-access-control-integration-tests",
    "network-access-control-server",
    "nvvs-containers",
    "nvvs-devops",
    "nvvs-devops-github-actions",
    "nvvs-devops-monitor",
    "staff-device-dhcp-server",
    "staff-device-dns-dhcp-admin",
    "staff-device-dns-dhcp-disaster-recovery",
    "staff-device-dns-dhcp-infrastructure",
    "staff-device-dns-server",
    "staff-device-logging-dns-dhcp-integration-tests",
    "staff-device-logging-infrastructure",
    "staff-device-logging-syslog-to-cloudwatch",
    "staff-device-private-dns-zone",
    "staff-device-shared-services-infrastructure",
    "staff-infrastructure-admin-sso",
    "staff-infrastructure-certificate-services",
    "staff-infrastructure-metric-aggregation-server",
    "staff-infrastructure-metric-aggregator-cloud",
    "staff-infrastructure-monitoring-app-reachability",
    "staff-infrastructure-monitoring-blackbox-exporter",
    "staff-infrastructure-monitoring-dns-reachability",
    "staff-infrastructure-monitoring-snmpexporter",
    "staff-infrastructure-network-operations",
    "staff-infrastructure-network-services",
    "staff-infrastructure-smtp-relay-server",
    "staff-technology-services-github-teams",
    "terraform-panorama-config",
    "transit-gateways"
  ]
  github_teams = {
    nvvs-devops-admins = {
      description = "To provide administrator access of various repos to the ~NVVS~ DISO DevOps team."
      team_maintainers = [
        "AafAnsari",       # Aafreen
        "asifamirat00",    # Asif
        "ASTRobinson",     # Aaron
        "Gary-H9",         # Gary
        "jamesgreen-moj",  # James
        "kyphutruong",     # Ky
        "laurentb4",       # Lauren
        "mitchdawson1982", # Mitch
        "sb21460",         # Sandy
        "staff-infrastructure-moj",
        "operations-engineering-servicenow",
        #TODO remove Shuja, Nicholas and Mohamed once a admin account group is created for shared-services
        "shujauddinmoj", #Shuja Uddin
        "TaRaKaN8", #Nicholas Fan
        "Nasirmohamed1" #Mohamed Nasir
      ]
      team_members = [
        "dms1981",
        "moontune",
        "tommoj"
      ]
      team_repositories = local.common_team_repositories_for_all_groups
      permission        = "admin"
    }

    nvvs-devops-writers = {
      description = "To provide writer access of various repos to the ~NVVS~ DISO DevOps team."
      team_maintainers = [
        "staff-infrastructure-moj",
        "ASTRobinson"
      ]
      team_members = [
        "tomwells98",
        "NNavickas1"
      ]
      team_repositories = concat(
        local.common_team_repositories_for_all_groups,
        ["tech-docs-monitor"]
      )
      permission = "push"
    }
  }
}
