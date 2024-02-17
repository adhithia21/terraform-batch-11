remote_state {
  backend = "gcs"
  config = {
    bucket = "terraform-batch-11"
    prefix = "production/${path_relative_to_include()}/terraform.tfstate"
  }
}

inputs = {
    project_id = "studi-devops-370205"
    region = "asia-southeast2"
    zone = "asia-southeast2-a"
    name = "${basename(get_terragrunt_dir())}"
    machine_type = "e2-medium"
}