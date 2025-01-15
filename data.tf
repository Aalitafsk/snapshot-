/*
data "aws_ebs_snapshot" "ebs_volume" {
  most_recent = true
  owners      = ["self"]

  filter {
    name   = "volume-size"
    values = ["40"]
  }

  filter {
    name   = "tag:Name"
    values = ["Example"]
  }
} 
*/

# all the subnets in the aws 
data "aws_subnets" "all_subnets" {
    filter {
    name   = "tag:Name"
    values = ["${var.env}-abc-subnet-1-pub"]
  }
}

# all the volumes in the subnet 
data "aws_instances" "example" {
  filter {
    name   = "subnet-id"
    values = [data.aws_subnet.example.id]
  }
}