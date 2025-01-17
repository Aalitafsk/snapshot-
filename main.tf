# Terraform script that takes snapshots of specific EC2 instance volumes
/*
resource "aws_ebs_snapshot" "example_snapshot" {
  volume_id    = aws_ebs_volume.example.id
  description  = "A description of what the snapshot is" 
  storage_tier = "standard"  # Default is "standard".
  # encrypted - Whether the snapshot is encrypted.
  encrypted = true
  
  tags = {
    Name = "HelloWorld_snap"
  }
}
*/