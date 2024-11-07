variable "github_token" {
  description = "The GitHub personal access token with repo permissions"
  type        = string
  sensitive   = true
}

variable "repository_name" {
  description = "The name of the GitHub repository to create"
  type        = string
}

variable "description" {
  description = "A short description of the GitHub repository"
  type        = string
}

variable "visibility" {
  description = "The visibility of the repository. Options are 'public' or 'private'"
  type        = string
  validation {
    condition     = contains(["public", "private"], var.visibility)
    error_message = "Visibility must be either 'public' or 'private'."
  }
}
