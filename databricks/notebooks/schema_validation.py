from pyspark.sql.functions import col

required_fields = [
    "txn_id", "user_id", "amount",
    "location", "merchant_id", "timestamp"
]

valid_df = parsed_df
invalid_df = parsed_df

for field in required_fields:
    valid_df = valid_df.filter(col(field).isNotNull())
    invalid_df = invalid_df.filter(col(field).isNull())
