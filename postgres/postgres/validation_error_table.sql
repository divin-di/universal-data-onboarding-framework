CREATE TABLE validation_errors (
    error_id        UUID PRIMARY KEY,
    batch_id        UUID,
    source_name     VARCHAR(100),
    error_reason    TEXT,
    record_payload  JSONB,
    created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
