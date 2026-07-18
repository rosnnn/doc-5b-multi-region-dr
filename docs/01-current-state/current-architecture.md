# Current-State Architecture Documentation

The current platform runs in ap-south-1 with microservices distributed across three availability zones. The architecture includes payment ingestion, auth, risk checks, ledger, settlement, notification, reconciliation, reporting, merchant APIs, customer APIs, fraud, and operations services. Datastores include Aurora PostgreSQL, DynamoDB, Redis, Kafka/MSK, and S3-based audit archives. Observability includes metrics, logs, traces, and alerting integrations.

Key weaknesses in the current state:
- Region-level outage creates material service disruption.
- Recovery workflows rely heavily on manual decision points.
- Cross-service dependency chains amplify failure propagation.
- Recovery verification lacks fully automated business checks.

Failure domains are primarily regional and control-plane dependent. The DR design improves this via explicit region failover contracts and tested runbooks.
