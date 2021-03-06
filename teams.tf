locals {
  github_teams = {
    cloud-ops-admins = {
      description = "To provide administrator access of various repos to Cloud Operations team."
      team_maintainers = [

      ]
      team_members = [
        "yusufsheiqh",
        "emileswarts",
        "bagg3rs",
        "MatthewWhiteMoJ",
        "mTouhid",
        "wanieldilson",
        "ASTRobinson",
        "mitchdawson1982",
        "Gary-H9",
        "andycohen",
        "ermiasworku",
        "moontune",
        "kyphutruong",
        "tommoj"
      ]
      team_repositories = [
        "cloud-operations",
        "cloud-operations-github-actions",
        "cloud-operations-slack-bot",
        "mojo-aws-github-oidc-provider",
        "deployment-tgw",
        "network-access-control-admin",
        "network-access-control-disaster-recovery",
        "network-access-control-infrastructure",
        "network-access-control-integration-tests",
        "network-access-control-server",
        "PaloAlto-pipelines",
        "staff",
        "staff-device-dhcp-server",
        "staff-device-dns-dhcp-admin",
        "staff-device-dns-dhcp-disaster-recovery",
        "staff-device-dns-dhcp-infrastructure",
        "staff-device-dns-server",
        "staff-device-docker-base-images",
        "staff-device-logging-dns-dhcp-integration-tests",
        "staff-device-logging-infrastructure",
        "staff-device-logging-syslog-to-cloudwatch",
        "staff-device-private-dns-zone",
        "staff-device-shared-services-infrastructure",
        "staff-infrastructure-admin-sso",
        "staff-infrastructure-certificate-services",
        "staff-infrastructure-metric-aggregation-server",
        "staff-infrastructure-metric-aggregator-cloud",
        "staff-infrastructure-monitoring",
        "staff-infrastructure-monitoring-app-reachability",
        "staff-infrastructure-monitoring-blackbox-exporter",
        "staff-infrastructure-monitoring-config",
        "staff-infrastructure-monitoring-deployments",
        "staff-infrastructure-monitoring-dns-reachability",
        "staff-infrastructure-monitoring-snmpexporter",
        "staff-infrastructure-network-operations",
        "staff-infrastructure-network-services",
        "staff-infrastructure-smtp-relay-server",
        "staff-technology-services-github-teams",
        "tech-docs-monitor",
        "terraform-panorama-config",
        "transit-gateways"
      ]
      permission = "admin"
    }

    cloud-ops-writers = {
      description = "To provide writer access of various repos to Cloud Operations team."
      team_maintainers = [

      ]
      team_members = [
        "rwinstanley1"
      ]
      team_repositories = [
        "cloud-operations",
        "cloud-operations-github-actions",
        "cloud-operations-slack-bot",
        "mojo-aws-github-oidc-provider",
        "deployment-tgw",
        "network-access-control-admin",
        "network-access-control-disaster-recovery",
        "network-access-control-infrastructure",
        "network-access-control-integration-tests",
        "network-access-control-server",
        "PaloAlto-pipelines",
        "staff",
        "staff-device-dhcp-server",
        "staff-device-dns-dhcp-admin",
        "staff-device-dns-dhcp-disaster-recovery",
        "staff-device-dns-dhcp-infrastructure",
        "staff-device-dns-server",
        "staff-device-docker-base-images",
        "staff-device-logging-dns-dhcp-integration-tests",
        "staff-device-logging-infrastructure",
        "staff-device-logging-syslog-to-cloudwatch",
        "staff-device-private-dns-zone",
        "staff-device-shared-services-infrastructure",
        "staff-infrastructure-admin-sso",
        "staff-infrastructure-certificate-services",
        "staff-infrastructure-metric-aggregation-server",
        "staff-infrastructure-metric-aggregator-cloud",
        "staff-infrastructure-monitoring",
        "staff-infrastructure-monitoring-app-reachability",
        "staff-infrastructure-monitoring-blackbox-exporter",
        "staff-infrastructure-monitoring-config",
        "staff-infrastructure-monitoring-deployments",
        "staff-infrastructure-monitoring-dns-reachability",
        "staff-infrastructure-monitoring-snmpexporter",
        "staff-infrastructure-network-operations",
        "staff-infrastructure-network-services",
        "staff-infrastructure-smtp-relay-server",
        "staff-technology-services-github-teams",
        "tech-docs-monitor",
        "terraform-panorama-config",
        "transit-gateways"
      ]
      permission = "push"
    }
  }
}
