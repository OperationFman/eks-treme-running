# Resource: aws_subnet
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet
resource "aws_subnet" "private-ap-southeast-2a" {
  vpc_id         = aws_vpc.main.id
  cidr_block     = "10.0.0.0/19"
  availability_zone = "ap-southeast-2a"

  tags = {
    "Name"                         = "private-ap-southeast-2a"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/demo"     = "owned"
  }
}

resource "aws_subnet" "private-ap-southeast-2b" {
  vpc_id         = aws_vpc.main.id
  cidr_block     = "10.0.32.0/19"
  availability_zone = "ap-southeast-2b"

  tags = {
    "Name"                         = "private-ap-southeast-2b"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/demo"     = "owned"
  }
}

resource "aws_subnet" "public-ap-southeast-2a" {
  vpc_id         = aws_vpc.main.id
  cidr_block     = "10.0.64.0/19"
  availability_zone = "ap-southeast-2a"

  tags = {
    "Name"                         = "public-ap-southeast-2a"
    "kubernetes.io/role/elb"        = "1"
    "kubernetes.io/cluster/demo"     = "owned"
  }
}

resource "aws_subnet" "public-ap-southeast-2b" {
  vpc_id         = aws_vpc.main.id
  cidr_block     = "10.0.96.0/19"
  availability_zone = "ap-southeast-2b"

  tags = {
    "Name"                         = "public-ap-southeast-2b"
    "kubernetes.io/role/elb"        = "1"
    "kubernetes.io/cluster/demo"     = "owned"
  }
}
