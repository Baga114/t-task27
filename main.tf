terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}
# Provider Configuration
provider "aws" {
  access_key = "AKIAV2WIWGJAZJKSPZGF"
  secret_key = "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"
  region     = "us-east-1"

}

# Set up VPC peering between VPC A and VPC B
resource "aws_vpc_peering_connection" "vpc_peering" {

  peer_vpc_id = aws_vpc.vpc_b.id
  vpc_id      = aws_vpc.vpc_a.id
  auto_accept = true

  tags = {
    Name = "VPC Peering between vpc_b and vpc_a"
  }
}







