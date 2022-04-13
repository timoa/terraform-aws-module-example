output "available_zones" {
  description = "Return the list of available zones"
  value       = data.aws_availability_zones.available.names
}