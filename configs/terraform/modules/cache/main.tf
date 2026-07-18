resource "aws_elasticache_replication_group" "cache" { replication_group_id = "cache-global" node_type = "cache.t4g.small" num_cache_clusters = 2 engine = "redis" }
