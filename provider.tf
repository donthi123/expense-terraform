provider "vault" {
  address = "https://vault-internal.donthi123.online"
  skip_tls_verify = true
  token = var.vault_token
}
#