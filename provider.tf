provider "vault" {
  address = "https://vault-internal.donthi123.online:8200"
  skip_tls_verify = true
  token = var.vault_token
}
#