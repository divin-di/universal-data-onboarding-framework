valid_df.writeStream \
    .format("delta") \
    .outputMode("append") \
    .option("checkpointLocation", "/delta/checkpoints/binance") \
    .start("/delta/bronze/binance_transactions")

invalid_df.write \
    .format("jdbc") \
    .option("url", "jdbc:postgresql://localhost:5433/metadata") \
    .option("dbtable", "validation_errors") \
    .option("user", "admin") \
    .option("password", "password123") \
    .mode("append") \
    .save()
