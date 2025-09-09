# R-Telco Customer Churn Data Cleaning and Exploratory Analysis
![Img1](https://github.com/felipe-lemos-costa/R-Telco-Customer-Churn-Data-Cleaning-and-Exploratory-Analysis/raw/main/images/img1.jpg)

# Summary
In this project, I performed data cleaning and exploratory analysis on the Telco Customer Churn dataset using R. The workflow included importing and cleaning the dataset, handling missing values, converting variables to appropriate types, and creating visualizations to analyze customer churn. I calculated the overall churn rate, analyzed churn by contract type, and examined churn patterns across different monthly charge groups. The project provides insights into customer behavior, highlights key factors related to churn, and serves as a foundation for predictive modeling and customer retention strategies.

# Key Insights
1. The overall churn rate is 26.6%, meaning that roughly one in four customers left the company. This indicates a moderate level of customer attrition and highlights the importance of retention strategies to reduce churn and maintain a stable customer base:
![Img2](https://github.com/felipe-lemos-costa/R-Telco-Customer-Churn-Data-Cleaning-and-Exploratory-Analysis/raw/main/images/img2.jpeg)

2. In this chart, I can identify is that customers with longer contracts exhibit significantly higher retention, while month-to-month contracts are associated with a much higher risk of churn:
* Month-to-month contracts have the highest churn rate, 42.7%, indicating that customers on this type of contract are much more likely to cancel;
* One-year contracts have a reduced churn of 11.3%, showing higher retention;
* Two-year contracts show a very low churn, only 2.8%, indicating that long-term contracts retain customers much more effectively.

![Img3](https://github.com/felipe-lemos-costa/R-Telco-Customer-Churn-Data-Cleaning-and-Exploratory-Analysis/raw/main/images/img3.jpeg)

3. The chart shows that customer churn decreases as the monthly charge decreases. Customers paying less than $30 per month have the lowest churn rate at 9.8%, while those in the $60–$89 range have the highest churn at 33.8%, followed closely by the $90+ group at 32.9%. This suggests that higher-priced plans are more likely to experience customer cancellations, indicating that pricing could be a key factor influencing churn.
![Img4](https://github.com/felipe-lemos-costa/R-Telco-Customer-Churn-Data-Cleaning-and-Exploratory-Analysis/raw/main/images/img4.jpeg)

# Conclusion
This exploratory analysis of the Telco Customer Churn dataset provided valuable insights into customer behavior and factors influencing churn. The overall churn rate of 26.6% highlights a significant opportunity for retention strategies. Contract type emerged as a critical factor: customers with month-to-month contracts are at the highest risk of leaving, while longer-term contracts strongly improve retention. Additionally, higher monthly charges are associated with increased churn, suggesting that pricing plays a key role in customer decisions.

These findings offer a solid foundation for developing predictive models to identify at-risk customers and for designing targeted retention initiatives. By focusing on contract structuring and pricing strategies, companies can reduce churn, improve customer satisfaction, and increase long-term profitability.

# License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
