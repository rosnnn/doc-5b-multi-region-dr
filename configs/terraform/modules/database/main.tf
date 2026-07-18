resource "aws_rds_global_cluster" "aurora" { global_cluster_identifier = "payments-global" engine = "aurora-postgresql" }
