data "terraform_remote_state" "infra" {
  backend = "s3"

  config = {
    bucket = "bentley-tf-remote-state"
    key    = "dev/infra_v1.0.0.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "app_blue" {
  backend   = "s3"
  workspace = terraform.workspace

  config = {
    bucket = "bentley-tf-remote-state"
    key    = "dev/app_blue_v1.0.0.tfstate"
    region = "us-east-1"
  }
}

# if using workspace, the bucket path is automatically changed to env:/workspace/dev...