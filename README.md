# "Alexa, can you handle big data?"

## Background
Amazon's shoppers depend on product reviews when making a purchase. While Amazon makes these datasets publicly available, it can exceed the capacity of average local machines to handle the data that has over 1.5 million rows; with over 40 datasets. The goal is to perform the ETL process in the cloud and upload a DataFrame to an RDS instance, and to perform a statistical analysis of selected data.

## Instructions
### Level 1
* Use the furnished schema to create tables in RDS database.
* Create two separate Google Colab notebooks.
* **Extract** two datasets from the [Review Dataset](https://s3.amazonaw.com/amazon-reviews-pds/tsv/index.txt), and count the number of reviews.
* **Transform** the dataset to fit the tables in the [Schema File](../Resources/schema.sql).
* **Load** the DataFrames that correspond to tables into an RDS instance.

### Level 2
Investigate whether Amazon's Vine Customer Reviews are free of bias by using either PySpark or SQL to analyze the data. <p>

  ![Image](Images/vine01.png)

In summary, the result analysis (number of records vs total vine Reviews) indicates the majority of Vine reviewers tend to provide higher star ratings (4 or 5) perhaps due to the fact that the reviewers are less interested in providing comments in general may be unless they receive a free products in exchange for writing reviews. It can be concluded that the reviews from Amazon's Vine program may not be trustworthy.<p>
  
In summary, despite the number of records for video games (1,785,886) were much higher than that of the software (341,913), based on analysis, the total vine reviews for video games are lower than the software with higher star ratings for  

 
## Further Considerations
* Delete RDS password and endpoint when uploading the Jupyter Notebooks: [Level 1](level-1) and [Level 2](level-2)
* Make sure to clean up all AWS resources by referring to [AWS cleanup guide](../Resources/AWS_cleanup.pdf) and [AWS check billing guide](../Resources/AWS_check_billing.pdf)
