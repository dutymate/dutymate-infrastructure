output "sg_alb_id" {
  value = aws_security_group.sg_alb.id
}

output "sg_ecs_id" {
  value = aws_security_group.sg_ecs.id
}

output "sg_mongodb_id" {
  value = aws_security_group.sg_mongodb.id
}

output "sg_mysql_id" {
  value = aws_security_group.sg_mysql.id
}

output "sg_valkey_id" {
  value = aws_security_group.sg_valkey.id
}
