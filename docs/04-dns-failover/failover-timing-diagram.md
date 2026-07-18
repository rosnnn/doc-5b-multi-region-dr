```mermaid
gantt
  title Failover Timeline
  dateFormat  X
  section Failover
  Detect outage :done, 0, 30
  Switch DNS :done, 30, 40
  Warm-up secondary :active, 40, 180
```
