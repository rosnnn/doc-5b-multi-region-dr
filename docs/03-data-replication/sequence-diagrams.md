```mermaid
sequenceDiagram
  participant P as Primary
  participant S as Secondary
  P->>S: Replicate write async
  S-->>P: Ack replication lag metric
```
