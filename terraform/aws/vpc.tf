resource "aws_vpc" "this" {}

resource "aws_subnet" "this" {
  count = 4

  vpc_id = aws_vpc.this.id
}
