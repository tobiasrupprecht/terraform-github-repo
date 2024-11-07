# Initialize the GitHub provider
provider "github" {
  token = var.github_token
}

# Define variables
variable "github_token" {
  description = "The GitHub personal access token"
  type        = string
  sensitive   = true
}

variable "repository_name" {
  description = "The name of the GitHub repository"
  type        = string
}

variable "description" {
  description = "The description of the GitHub repository"
  type        = string
  default     = ""
}

variable "visibility" {
  description = "The visibility of the GitHub repository (private or public)"
  type        = string
  default     = "private"
}

# Create a new GitHub repository
resource "github_repository" "repo" {
  name        = var.repository_name
  description = var.description
  visibility  = var.visibility
}