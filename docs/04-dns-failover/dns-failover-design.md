# DNS Failover and Health Check Specification

Routing uses Route53 failover policy with primary and secondary records. Health checks validate API control-plane and transaction health endpoints with tight intervals and failure thresholds.

## Timing Strategy
- Detection window: 30-90s
- DNS switch: sub-minute after confirmed outage
- Warm-up and verification: dependent on tier objective

## Validation Gates
- Service liveness
- Transaction canary pass rate
- Reconciliation sanity checks
- Queue lag normalization
