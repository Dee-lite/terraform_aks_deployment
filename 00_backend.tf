terraform {
  cloud {

    organization = "VichelCollective"

    workspaces {
      name = "kubernetes-azure-aks"
    }
  }
}