output "sg_id" {
  description = "output sg id"
  value       = [aws_security_group.sg_template.id]
}