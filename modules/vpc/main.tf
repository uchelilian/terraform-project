resource "aws_vpc" "uchevpc" {
  cidr_block = var.vpc_cidr
}
resource "aws_subnet" "prisub" {
  vpc_id = aws_vpc.uchevpc.id
  cidr_block = var.prisub_cidr
}
resource "aws_subnet" "pubsub" {
  vpc_id = aws_vpc.uchevpc.id
  cidr_block = var.pubsub_cidr
}
