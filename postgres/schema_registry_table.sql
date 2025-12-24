DROP TABLE IF EXISTS schema_registry;
CREATE TABLE schema_registry (
    schema_id SERIAL PRIMARY KEY,
    topic_name VARCHAR(100),
    version INT,
    schema_json JSONB,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
