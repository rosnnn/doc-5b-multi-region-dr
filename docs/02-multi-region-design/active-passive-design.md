# Active-Passive Design

Active-passive keeps full traffic in ap-south-1 and warm standby in ap-south-2. Replication links continuously update standby state. On regional failure, Route53 failover and service promotion workflows are executed by runbook.

Strengths:
- Operationally simpler than active-active
- Easier regulatory and audit explanation
- Predictable control for financial write ordering

Trade-offs:
- Higher failover latency than active-active
- Secondary compute underutilization in steady state
- Cutover validation sequence is critical
