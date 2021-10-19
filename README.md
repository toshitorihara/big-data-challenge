# "Alexa, can you handle big data?"

## Background
Amazon's shoppers generally depend on product reviews when making a purchase. While Amazon makes these large datasets publicly available, it can sometimes exceed the capacity of average local machines to handle given it has over 1.5 million rows; with over 40 datasets. The 1st goal is to perform the ETL process in the cloud and upload a DataFrame to an RDS instance, and to create Dataframes to match production-ready tables from 2 big Amazon customer review datasets. The 2nd goal will be to use PySpark or SQL to perform a statistical analysis of selected data, in order to determine whether reviews from Amazon's Vine program are trustworthy.
- - -
## Instructions
### Level 1
* Use the furnished schema to create tables in your RDS database.
* Create 2 separate Google Colab notebooks (due to the large data sizes) and **extract** any two datasets from the list at [review dataset](https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt) from S3 data sources, one into each notebook. Then, complete the following steps:
  * Count the number of records (rows) in the dataset.
  * **Transform** the dataset to fit the tables in the [schema file](../Resources/schema.sql), and make sure the DataFrames match in data type and in column name.
  * **Load** the DataFrames that correspond to tables into an RDS instance. 

### Level 2
In Amazon's Vine program, reviewers receive free products in exchange for reviews.
  ![vine01.png](Images/vine01.png)
Amazon has several policies to reduce the bias of its Vine reviews: [https://www.amazon.com/gp/vine/help?ie=UTF8](https://www.amazon.com/gp/vine/help?ie=UTF8).
But are Vine reviews truly trustworthy? Your task is to investigate whether Vine reviews are free of bias. Use either PySpark or—for an extra challenge—SQL to analyze the data.

* If you choose to use SQL, first use Spark on Colab to extract and transform the data and load it into a SQL table on your RDS account. Perform your analysis with SQL queries on RDS.
* While there are no hard requirements for the analysis, consider steps you can take to reduce noisy data, e.g., filtering for reviews that meet a certain number of helpful votes, total votes, or both.
* Submit a summary of your findings and analysis.
- - -
## Submission
* Download the Google Colab notebooks as `.ipynb` files (delete the RDS password and endpoint before making the notebook public), and copy SQL queries into `.sql` files and upload to GitHub.
* Make sure to clean up all AWS resources by referring to [AWS cleanup guide](../Resources/AWS_cleanup.pdf) and [AWS check billing guide](../Resources/AWS_check_billing.pdf).
