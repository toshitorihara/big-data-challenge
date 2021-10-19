# "Alexa, can you handle big data?"

## Background
Amazon's shoppers depend on product reviews when making a purchase. While Amazon makes these datasets publicly available, it can exceed the capacity of average local machines to handle the data that has over 1.5 million rows; with over 40 datasets. The goal is to perform the ETL process in the cloud and upload a DataFrame to an RDS instance, and to perform a statistical analysis of selected data.

## Instructions
### Level 1
* Use the furnished schema to create tables in RDS database, and create two separate Google Colab notebooks.
* **Extract** two datasets from the [Review Dataset](https://s3.amazonaw.com/amazon-reviews-pds/tsv/index.txt), and count the number of reviews.
* **Transform** the dataset to fit the tables in the [Schema File](../Resources/schema.sql).
* **Load** the DataFrames that correspond to tables into an RDS instance.

### Level 2

Investigate whether Amazon's Vine Customer Reviews are free of bias by using either PySpark or SQL to analyze the data. <p>
![Image](Images/vine01.png)

### Conclusion: The analysis indicates that due to Amazon's Vine program's nature of reviewers receiving free products in exchange for reviews, it can be concluded that the reviews from Amazon's Vine program may not be trustworthy.<p>

### Considerations
* Delete RDS password and endpoint when uploading the Jupyter Notebooks in [Level 1](level-1) and [Level 2](level-2)<br>
* Clean up all AWS resources by referring to [AWS cleanup guide](../Resources/AWS_cleanup.pdf) and [AWS check billing guide](../Resources/AWS_check_billing.pdf)
