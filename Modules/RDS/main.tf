resource "aws_db_subnet_group" "dbsg" {
  name       = "dutymate-dbsg"
  subnet_ids = var.public_subnets

  tags = {
    Name = "dutymate-dbsg"
  }
}

resource "aws_db_instance" "db" {
  allocated_storage       = 20
  engine                  = "mysql"
  engine_version          = "8.0.40"
  instance_class          = "db.t3.micro"
  username                = var.mysql_username
  password                = var.mysql_password
  identifier              = "dutymate-db"
  multi_az                = false
  db_subnet_group_name    = aws_db_subnet_group.dbsg.name
  vpc_security_group_ids  = [var.sg_mysql_id]
  parameter_group_name    = aws_db_parameter_group.db_params.name
  kms_key_id              = var.kms_rds_key_arn
  storage_encrypted       = true
  skip_final_snapshot     = true
  backup_retention_period = 7

  tags = {
    Name = "dutymate-db"
  }
}

resource "aws_db_parameter_group" "db_params" {
  name   = "dutymate-db-params"
  family = "mysql8.0"

  parameter {
    name  = "time_zone"
    value = "Asia/Seoul"
  }

  tags = {
    Name = "dutymate-db-params"
  }
}
