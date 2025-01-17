output "subnet_ids" {
  value       = data.aws_subnets.all_subnets.ids
}

output "instance_ids" {
  value = [for instance in data.aws_instances.example.instances : instance.id]
}

