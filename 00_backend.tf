terraform {
  cloud {

    organization = "Vichel"

    workspaces {
      name = "kubernetes-azure-aks"
    }
  }
}