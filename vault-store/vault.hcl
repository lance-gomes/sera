storage "file" {
  path = "/opt/vault/vault-store/fs"
}
disable_mlock = 1
listener "tcp" {
 address     = "0.0.0.0:8200"
 tls_disable = 1
}
