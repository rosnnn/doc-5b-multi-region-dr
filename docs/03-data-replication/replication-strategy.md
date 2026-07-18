# Replication Strategy

## Component Decisions
- Aurora PostgreSQL Global Database: primary writer in active region, cross-region async replication; controlled promotion workflow.
- DynamoDB Global Tables: multi-region replication with conflict policy and idempotency token constraints.
- ElastiCache Global Datastore: read locality and fast cache warm-up during promotion.
- MSK replication: cross-region topic replication with consumer lag thresholds.
- S3 CRR: object-level replication for artifacts and audit trail retention.

## CAP and Split-Brain
Financial integrity favors consistency for ledger writes; availability-first mode is constrained to non-settlement workloads. Split-brain risk is reduced with single-writer policy for critical ledgers and explicit promotion locks.

## Monitoring Thresholds
- Replication lag thresholds per component
- Failover readiness score
- Reconciliation drift indicators
- Consumer lag and replay backlog
