terraform {
  # Deploy version v0.0.3 in stage
  # source = "git::git@github.com:foo/modules.git//app?ref=v0.0.3"
}

inputs = {
  environ = "Production"
}