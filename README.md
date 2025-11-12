# Customer Personality Analysis – Correlation Heatmap & Pairwise Relationships

### Project Overview
This project performs **Exploratory Data Analysis (EDA)** on the **Customer Personality Analysis** dataset from Kaggle.  
It focuses on discovering **relationships between customer attributes** using **correlation heatmaps** and **pairwise visualizations**.

By exploring purchase behavior, spending patterns, and demographic features, we can uncover which variables are most strongly related supporting better **marketing segmentation** and **customer profiling**.

## Dataset Information
**Dataset Source:** [Customer Personality Analysis (Kaggle)](https://www.kaggle.com/datasets/imakash3011/customer-personality-analysis)

**Filename:** `marketing_campaign.csv`

**Rows:** ~2,000  
**Columns:** 29  

Each record represents a customer and contains:
- **Demographics:** `Age`, `Education`, `Marital_Status`, `Income`
- **Product Spending:** `MntWines`, `MntFruits`, `MntGoldProds`, etc.
- **Engagement Metrics:** `Recency`, `NumWebPurchases`, `NumDealsPurchases`
- **Target Variable:** `Response` (campaign response)

## Steps Performed

### 1. Data Loading
- Loaded dataset using `pandas.read_csv()`
- Verified column names and shape

### 2. Data Cleaning
- Dropped **ID** or unnamed columns
- Removed duplicates  
- Handled missing numeric values using **median imputation**
  ```python
  numeric_cols = data.select_dtypes(include=[np.number]).columns
  data[numeric_cols] = data[numeric_cols].apply(lambda x: x.fillna(x.median()))

### 3. Correlation Computation

Computed Pearson correlation matrix between numeric columns
```
corr_matrix = data.corr(method='pearson')
```
### 4. Heatmap Visualization

- Used Seaborn to visualize correlations

- Masked upper triangle for clarity

- Saved as ` customer_correlation_heatmap.png `

### 5. Pairwise Relationship Plot

- Selected top 5 correlated features automatically

- Displayed scatter + distribution plots

- Saved as ` customer_pairplot.png `

### 6. Summary of Strongest Relationships

Identified top 3 strongest positive and 3 strongest negative correlations for insights.

## Example Output

Top Correlations:
```
#!yaml

Strongest Positive Correlations:
mntmeatproducts  numcatalogpurchases    0.747460
income           mntmeatproducts        0.730991
                 numcatalogpurchases    0.712883

Strongest Negative Correlations:
income               numwebvisitsmonth   -0.649645
mntmeatproducts      numwebvisitsmonth   -0.566114
numcatalogpurchases  numwebvisitsmonth   -0.535708
```

### Generated Visuals:

- customer_correlation_heatmap.png

- customer_pairplot.png

## Insights Gained

- Customers who spend more on **wines, meat, and gold products** tend to show **consistent positive correlation**, indicating similar purchasing power and lifestyle.

- **Recency** (days since last purchase) has **negative correlation** with purchase frequency meaning recent buyers purchase more frequently.

- Product spending patterns across categories are interrelated, useful for **cross-selling strategies**.

## Dependencies
```
pandas
numpy
matplotlib
seaborn 
```

### Install via:

```pip install -r requirements.txt```

## Conclusion

This project demonstrates how **EDA and correlation analysis** help identify meaningful customer insights that drive business decisions.
It’s a foundation for further tasks like **segmentation, clustering, or predictive modeling**.

# Author
[Sanjay Kumar](https://got-sanjay.github.io/portfolio/) \
Data Science & Deep Learning Developer \
[LinkedIn](https://www.linkedin.com/in/gotsanjay)
 | [GitHub](https://github.com/got-sanjay)