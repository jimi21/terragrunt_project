terraform {
  # Deploy version v0.0.3 in stage
   source = "https://github.com/jimi21/terragrunt_project.git"
}

inputs = {
  environ = "Production"
}