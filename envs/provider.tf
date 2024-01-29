provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Env            = "develop"
      Project        = "arcgis-system-deploy-automatically"
      ServiceEdition = "standard"
      SystemRole     = "arcgis-system"
      CostManage     = "sample"
    }
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }

}