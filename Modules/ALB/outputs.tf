output "alb_arn" {
  value = aws_alb.alb.arn
}

output "alb_dns_name" {
  value = aws_alb.alb.dns_name
}

output "alb_zone_id" {
  value = aws_alb.alb.zone_id
}

output "alb_target_group_arn" {
  value = aws_alb_target_group.alb_target_group.arn
}
