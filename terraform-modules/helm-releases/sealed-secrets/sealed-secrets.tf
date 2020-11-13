data "aws_secretsmanager_secret_version" "sealed_secrets_keys" {
  secret_id = "sealed-secrets-keys"
}

locals {
  sealed_secrets_keys = jsondecode(data.aws_secretsmanager_secret_version.sealed_secrets_keys.secret_string)
}

resource "kubernetes_secret" "sealed-secrets-key-1" {
  metadata {
    generate_name = "sealed-secrets-key"
    namespace = "kube-system"

    labels = {
      "sealedsecrets.bitnami.com/sealed-secrets-key" = "active"
    }
  }

  data = {
    "tls.crt" = base64decode(local.sealed_secrets_keys.sealed_secrets_key_01_crt)
    "tls.key" = base64decode(local.sealed_secrets_keys.sealed_secrets_key_01_key)
  }

  type = "kubernetes.io/tls"
}

resource "kubernetes_secret" "sealed-secrets-key-2" {
  metadata {
    generate_name = "sealed-secrets-key"
    namespace = "kube-system"

    labels = {
      "sealedsecrets.bitnami.com/sealed-secrets-key" = "active"
    }
  }

  data = {
    "tls.crt" = base64decode(local.sealed_secrets_keys.sealed_secrets_key_02_crt)
    "tls.key" = base64decode(local.sealed_secrets_keys.sealed_secrets_key_02_key)
  }

  type = "kubernetes.io/tls"
}

resource "kubernetes_secret" "sealed-secrets-key-3" {
  metadata {
    generate_name = "sealed-secrets-key"
    namespace = "kube-system"

    labels = {
      "sealedsecrets.bitnami.com/sealed-secrets-key" = "active"
    }
  }

  data = {
    "tls.crt" = base64decode(local.sealed_secrets_keys.sealed_secrets_key_03_crt)
    "tls.key" = base64decode(local.sealed_secrets_keys.sealed_secrets_key_03_key)
  }

  type = "kubernetes.io/tls"
}

resource "helm_release" "sealed_secrets" {
  name       = "sealed-secrets"
  namespace  = "kube-system"
  repository = "https://kubernetes-charts.storage.googleapis.com"
  chart      = "sealed-secrets"
  version    = "1.10.1"
}
