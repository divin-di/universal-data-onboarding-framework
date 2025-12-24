from pyspark.sql.functions import col, from_json
from pyspark.sql.types import *

schema = StructType([
    StructField("txn_id", LongType(), False),
    StructField("user_id", LongType(), False),
    StructField("amount", DoubleType(), False),
    StructField("location", StringType(), False),
    StructField("merchant_id", LongType(), False),
    StructField("timestamp", StringType(), False)
])

raw_df = (
    spark.readStream
    .format("kafka")
    .option("kafka.bootstrap.servers", "localhost:9092")
    .option("subscribe", "binance_transactions")
    .load()
)

parsed_df = raw_df.select(
    from_json(col("value").cast("string"), schema).alias("data")
).select("data.*")
