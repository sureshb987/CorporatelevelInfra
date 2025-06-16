provider "aws" {
  region = var.aws_region
}


# Subnet Group for RDS
resource "aws_db_subnet_group" "CorporateProject_db_subnet_group" {
  name       = "${lower(var.project_name)}-db-subnet-group" # Convert to lowercase
  subnet_ids = var.subnet_ids

  tags = {
    Name = "${var.project_name} DB Subnet Group"
  }
}

# Security Group for RDS (PostgreSQL)
resource "aws_security_group" "CorporateProject_rds_sg" {
  name        = "${lower(var.project_name)}-rds-sg" # Convert to lowercase for consistency
  description = "Allow PostgreSQL access"
  vpc_id      = var.vpc_id

  ingress {
    description = "PostgreSQL"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = var.rds_allowed_cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project_name} RDS SG"
  }
}

# PostgreSQL RDS Instance
resource "aws_db_instance" "corporateproject_postgres" {
  identifier             = "${lower(var.project_name)}-postgres" # Convert to lowercase for consistency
  engine                 = "postgres"
  engine_version         = var.postgres_version
  instance_class         = var.instance_class
  allocated_storage      = var.allocated_storage
  storage_type           = "gp2"
  db_name                = var.db_name
  username               = var.db_username
  password               = var.db_password
  db_subnet_group_name   = aws_db_subnet_group.CorporateProject_db_subnet_group.name
  vpc_security_group_ids = [aws_security_group.CorporateProject_rds_sg.id]
  publicly_accessible    = false
  skip_final_snapshot    = true

  tags = {
    Name = "${var.project_name} PostgreSQL DB"
  }
}

