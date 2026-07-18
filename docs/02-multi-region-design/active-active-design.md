# Active-Active Design

Active-active distributes customer traffic and data operations across ap-south-1 and ap-south-2. Traffic steering is latency-based with health-aware fallback. Write paths are component-dependent: globally replicated systems support multi-region writes where conflict resolution rules are defined; strict-order financial ledgers remain single-writer with regional read replicas and controlled promotion.

Strengths:
- Lowest failover interruption
- Better regional load distribution
- Lower tail latency during localized impairment

Trade-offs:
- Highest operational complexity
- Conflict management and ordering controls required
- Increased testing overhead for split-brain prevention
