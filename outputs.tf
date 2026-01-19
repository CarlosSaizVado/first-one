output "resource_group_id" {
  value = module.resource_group.resource_group_id
}

output "resource_group_name" {
  value = module.resource_group.resource_group_name
}

output "storage_account_id" {
  value = module.storage_account.storage_account_id
}

output "storage_account_primary_connection_string" {
  value = module.storage_account.primary_connection_string
}

output "key_vault_id" {
  value = module.key_vault.key_vault_id
}

output "virtual_network_id" {
  value = module.network.virtual_network_id
}

output "subnet_id" {
  value = module.network.subnet_id
}

output "virtual_machine_id" {
  value = module.virtual_machine.virtual_machine_id
}

output "kubernetes_cluster_id" {
  value = module.kubernetes_cluster.kubernetes_cluster_id
}

output "nginx_service_ip" {
  value = module.kubernetes_nginx.nginx_service_ip
}