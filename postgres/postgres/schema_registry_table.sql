CREATE TABLE schema_registry (
    source_name     VARCHAR(100),
    schema_version  INT,
    schema_json     JSONB,
    effective_date  DATE,
    PRIMARY KEY (source_name, schema_version)
);
