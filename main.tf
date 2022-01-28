terraform {
  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = "~> 0.21.1"
    }
  }
}

// Create a Vault cluster within the HVN.
resource "hcp_vault_cluster" "hcp_vault" {
  cluster_id = var.cluster_id
  hvn_id     = var.hvn_id
  public_endpoint = var.pub_endpoint
  tier = var.tier
}
output "vault_private_endpoint_url" {
  description = "value of the vault_private_endpoint_url"
  value = hcp_vault_cluster.hcp_vault.vault_private_endpoint_url
}
output "vault_public_endpoint_url" {
  description = "value of the vault_public_endpoint_url"
  value = "${hcp_vault_cluster.hcp_vault.vault_public_endpoint_url != null ? hcp_vault_cluster.hcp_vault.vault_public_endpoint_url : "public_endpoint is set to false"}"
}