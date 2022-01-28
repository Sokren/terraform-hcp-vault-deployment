variable "cluster_id" {
  type = string
  description = "Name of the cluster"
}
variable "hvn_id" {
  type = string
  description = "Name of the hvn"
}
variable "pub_endpoint" {
  type = string
  description = "Denotes that the cluster has a public endpoint"
  default = false
}
variable "tier" {
  type = string
  description = "Tier of the HCP Vault cluster"
  default = "dev"
}