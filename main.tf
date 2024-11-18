# Initialize the GitHub provider
provider "github" {
  token = var.github_token
}

# Create a new GitHub repository
resource "github_repository" "repo" {
  name        = var.repository_name
  description = var.description
  visibility  = var.visibility
  has_issues  = true
  auto_init   = true
  gitignore_template = "sample"
}