{
  backend "s3" {
    bucket = "example_tf_states"
    key    = "global/vpc/us_east_1/example_state.tfstate"
    encrypt = true
    region     = "us-east-1"
  }
}

terraform {
backend "s3" {
bucket = "example_tf_states"
key    = "global/vpc/us_east_1/example_state.tfstate"
encrypt = true
region     = "us-east-1"
}
}

provider "aws" {
access_key = "${var.access_key}"
secret_key = "${var.secret_key}"
region = "${var.region}"
}
