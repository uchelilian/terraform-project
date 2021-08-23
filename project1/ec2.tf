module "firstec2module" {
  source = "../modules/ec2"
  ami_id = var.ami_id
  instance_name = var.instance_name
  instance_type = var.instance_type
}
module "firsts3module" {
  source = "../modules/s3"
  acl_type = var.acl_type
  bucket_name = var.bucket_name
}
module "firstvpcmodule" {
  source = "../modules/vpc"
  prisub_cidr = var.prisub_cidr
  pubsub_cidr = var.pubsub_cidr
  vpc_cidr = var.vpc_cidr
}
