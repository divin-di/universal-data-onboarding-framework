DROP TABLE IF EXISTS validation_errors;
CREATE TABLE validation_errors (
    error_id SERIAL PRIMARY KEY,
    source_name VARCHAR(100),
    raw_payload JSONB,
    error_reason TEXT,
    schema_version INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

