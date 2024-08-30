from pyspark.sql import SparkSession
from pyspark.sql.functions import col


def run_etl():
    # Cria uma sessão Spark
    spark = SparkSession.builder \
        .appName("PySpark ETL Job") \
        .getOrCreate()

    # Extract
    data = [("Alice", 34), ("Bob", 45), ("Cathy", 29)]
    columns = ["Name", "Age"]
    df = spark.createDataFrame(data, columns)

    # Transform
    df_transformed = df.withColumn("Age_Plus_One", col("Age") + 1)

    # Load
    df_transformed.show()

    # Fecha a sessão Spark
    spark.stop()


if __name__ == "__main__":
    run_etl()
