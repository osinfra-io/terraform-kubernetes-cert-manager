# TLS Private Key Resource
# https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key

resource "tls_private_key" "cert_manager_root" {
  algorithm   = "ECDSA"
  ecdsa_curve = "P256"
}

# TLS Self-Signed Certificate Resource
# https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/self_signed_cert

resource "tls_self_signed_cert" "cert_manager_root" {
  allowed_uses = [
    "cert_signing",
    "digital_signature",
    "key_encipherment"
  ]

  is_ca_certificate = true
  private_key_pem   = tls_private_key.cert_manager_root.private_key_pem

  subject {
    common_name  = "terraform-self-signed-ca.osinfra.io"
    organization = "Open Source Infrastructure (as Code) Terraform Self-Signed CA"
  }

  validity_period_hours = 262980
}
