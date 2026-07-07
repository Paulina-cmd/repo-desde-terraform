terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  
}

resource "github_repository" "mi_repo_desde_terraform" {
  name        = "repo-desde-terraform"
  description = "Prueba xd"
  visibility  = "public"

  # Configuraciones "pro" que le dan más utilidad al repo
  has_issues = true
  has_wiki   = false
  auto_init  = true
}