CREATE TABLE ingestion_batch (
    batch_id           UUID PRIMARY KEY,
    source_name         VARCHAR(100),
    ingestion_type      VARCHAR(20), -- batch / streaming
    file_name           VARCHAR(255),
    topic_name          VARCHAR(255),
    file_type           VARCHAR(50),
    start_time          TIMESTAMP,
    end_time            TIMESTAMP,
    status              VARCHAR(20),
    record_count        INT,
    error_count         INT,
    created_at          TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
