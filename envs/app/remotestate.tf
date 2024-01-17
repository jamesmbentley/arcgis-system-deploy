data "terraform_remote_state" "infra" {
  backend = "s3"

  config = {
    bucket = "bentley-tf-remote-state"
    key    = "dev/infra_v1.0.0.tfstate"
    region = "us-east-1"
  }
}