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

# all the ec2 m/c's in the subnet 
data "aws_instances" "all_instances_subnet" {
  filter {
    name   = "subnet-id"
    values = [aws_subnets.all_subnets.id]
  }
}

# all the volumes of a ec2 m/c
//