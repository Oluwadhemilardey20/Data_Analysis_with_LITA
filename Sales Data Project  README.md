# Sales Performance Analysis

## Overview
This project analyzes sales performance of a retail store to uncover key insights such as top-selling products, regional performance, monthly sales trends 
and calculating key metrics such as revenue and average sale per product.

## Data Source 
The primary source of dataset used for this analysis was those provided by facilitators of the program as part of the course. 

## Data Collected 
The dataset includes the following key columns:
1. Quantity: The number of units sold for a given transaction.
2. Unit Price: The price of units sold for a given transaction.
3. OrderID: The identification tag specific to a particular order.
4. CustomerID: The identification tag specific to a particular Customer. 
5. Order Date: The date on which a particular sale or transaction was made.
6. Region: The geographical area where the store operates.

## Objectives
1. Identify best-selling product based on quantity sold and revenue generated.
2. Analyze revenue contributions and product performance by each region. 
3. Track monthly trends, focusing each products, region and their revenue.

## Tools Used
- **Excel**: Data cleaning and calculations.
- **SQL**: Data querying and extraction.
- **Power BI**: Dashboard creation for data visualization.

## Exploratory Data analysis, insight uncovered and Recommendations 
- ## Excel Analysis
 ### Data Cleaning
1. Handle Missing Values: Identifying and addressing any gaps in data.
2. Remove Duplicates: Ensuring no redundant data records are present.

 ### Data Analysis
- The data was converted into a table and revenue, average sales per product and total revenue per region was calculated using formular to allow for an auto update
  if there is any changes or additon to the dataset.

  **Formular Used**
  
   ```
  Revenue =PRODUCT(Quantity,unitprice)
   ```
  
   ```
  Average sales per product =AVERAGEIF(range, criteria, [average range])
   ```

   ```
  Revenue per region =SUMIF(range, criteria, [sum range])
   ```  
- Pivot table was then used to summarize the data for easier interpretation;
1. **Total Sales by Product**:
- *Overall Key insight*: Shoes are the leading product, contributing nearly 30% (29.19%) of total revenue, making them the most profitable category by a significant margin.
Shirts are the second-largest contributor at 23.11%. Together, shoes and shirts account for over half (52.3%) of the total revenue,
indicating that these categories are major revenue drivers.

   Hats and Gloves occupy the middle ground, with 15.05% and 14.13% of revenue, respectively. While not as dominant as shoes or shirts, they still contribute significantly,
   making up around 29% of the total revenue combined.These products might represent complementary items that customers frequently purchase alongside higher-revenue items.

   Jackets and Socks account for the smallest shares, with 9.91% and 8.6% of the revenue. Their lower contribution might indicate that these items are either less popular or have a lower
   price point. This could also highlight potential areas for strategic improvement, such as targeted marketing or bundling with more popular items like shoes or shirts to boost sales.

- *Market Share Insights*: The revenue distribution suggests a clear concentration of sales in the top two categories, shoes and shirts. This concentration can indicate customer
   preference or seasonal demand patterns, especially if shoes and shirts are staple or high-demand items in your market.
   Diversifying product focus could help in balancing revenue across categories, potentially reducing reliance on a few high-performing items.

- *Potential Strategic Actions*: Boosting Mid-Range and Low-Contributing Products: Consider marketing strategies, bundling, or promotional discounts to enhance the appeal of hats, gloves,
   jackets, and socks, which are currently not contributing as much revenue. Prioritize inventory for shoes and shirts, given their substantial revenue contribution. For lower-performing
   items like socks, consider optimizing stock levels to minimize overstocking costs.
2. **Total sales by Region**
- *Overall Key insight*: The South region accounts for 44.16% of total revenue, nearly double that of the next-highest region. This makes it the largest contributor by a substantial margin,
   indicating either a higher demand for products or potentially larger market size in this area.
   This region’s strong performance may suggest a favorable demographic, product-market fit, or effective sales/marketing strategies in the South.

   The East region with 23.13% of total revenue, holds a solid position as the second-largest market. Although significantly lower than the South, the East still represents nearly a
   quarter of all sales.

   North contributes 18.42% to total revenue, making it a mid-performing region. Together with the East, these two regions comprise approximately 41.5% of total sales.
   Their combined revenue is almost as much as the South’s, suggesting that they’re important but still have growth potential to close the gap with the South.

   The West region has the smallest share at 14.29%, which could indicate a less developed or smaller market presence compared to other regions.
   This lower percentage could be due to fewer customers, lower demand, or different regional preferences that don’t align as well with the current product offerings.

- *Strategic Insights*: The South appears to be the most lucrative market, so continuing to invest in targeted marketing and promotions here could further solidify its leading position.

  The East and North regions have significant room for growth, especially since they already perform relatively well. Targeted campaigns or localized strategies in these regions could help
  them gain ground and further boost total sales.

  While the West is the smallest market, this may be an opportunity for growth. Assessing market conditions or refining product offerings to suit local preferences might improve sales here.
3. **Total Sales by Month**
- *Overall Key insights*: February is the top-performing month, generating 26% of total annual sales. This concentration suggests a significant seasonal effect, where a single month
   alone contributes more than a quarter of the entire year's revenue.
   The spike in February sales may be tied to specific events, holiday promotions, or other annual events that boost purchasing in that month.

   July, January, and June collectively contribute a significant portion of revenue, with each month accounting for around 11-13% of the total.
   These months could represent additional seasonal peaks, possibly tied to mid-year sales, new product launches, or other promotional campaigns.
   The strong performance in January could reflect post-holiday purchasing or New Year-related promotions.

   August and October provide steady contributions with 9.72% and 6.37% of revenue, respectively. Their consistent performance suggests these months might have regular demand,
   though they lack the peaks seen in top months.

  March through September (excluding July and June) are lower-revenue months, ranging from around 1.65% to 5.1% of total revenue.
  The lowest-performing month, September (1.65%), could indicate a seasonal dip in demand, possibly due to back-to-school seasons or other slowdowns.
  December (2.35%) is also notably low, which might be unexpected given typical holiday spending trends, suggesting that either this product line is not holiday-focused or that
  promotional activities during December could be optimized.

- *Seasonal Insights and Strategic Recommendations*: Given that February accounts for such a large portion of sales, aligning major promotional efforts, inventory management,
   and targeted campaigns around this month could maximize revenue.

   Targeting the lower-performing months (April, September, December) with special promotions, discounts, or bundling offers could help balance revenue across the year.

   The relatively strong sales in July and June provide an opportunity to create mid-year campaigns that further capitalize on these natural sales peaks.

- ## SQL Analysis
 ### Data Cleaning
1. Correct Data Types: Ensuring data types are appropriate for analysis (e.g., dates, integers, floats).
2. Remove Duplicates: Ensuring no redundant data records are present.
   ```
   Query: select distinct * into #temp_table from [dbo].[LITA Capstone Dataset pp]
          truncate table [dbo].[LITA Capstone Dataset pp]
          insert into [dbo].[LITA Capstone Dataset pp] select * from #temp_table
          drop table #temp_table
    ```

 ### Data Analysis
Queries were written to extract:
- **Total sale per product**: with the same insight as in excel

- **Monthly sale total**:  with the same insight as in excel

- **Total sale percentage contributed by each region**:  with the same insight as in excel

- **Highest selling products**:  with the same insight as in excel

- **Top five customers**:

  *key insight*: a higher number of customers contributed the same revenue in our sales which shows a large number of them are crucial for revenue retention and could indicate a
  segment of high-value clients. You might consider strategies to maintain these relationships, such as loyalty programs or targeted marketing.

- **Number of sales transaction in each region**:

  *Key insights*: There is near-equal distribution of sales transactions which suggests that your sales efforts, customer demand, or market reach are relatively
  balanced across regions. This could indicate consistent performance from the sales team or equally distributed customer interest in all areas.

  Since the numbers are similar, none of the regions significantly outperform others. This may suggest a need to look at other metrics, such as revenue per transaction to identify regions
  with potential for increased growth or customer engagement. For example, a region with slightly lower transaction volume but high revenue per transaction might be a prime target for growth.

  Such close figures could also suggest successful market penetration across different geographic areas. This would indicate that the product or service appeals broadly, and marketing
  efforts have reached a well-diversified audience.

  To refine these insights, look at the potential market size or population in each region. If, for example, one region has a smaller market size but a similar
  transaction count, that region might have a particularly high engagement rate, making it a stronghold for your business.

- ## PowerBI Dashboard
 ### Data Cleaning 
1. Correct Data Types: Ensuring data types are appropriate for analysis (e.g., dates, whole numbers, texts).
2. Remove Duplicates: Ensuring no redundant data records are present.
3. Handle Missing Values: Identifying and addressing any gaps in data.
   
 ### Data Visualization 
 A dashboard that visualizes the insights found in Excel and SQL was created. The dashboard includes a sales overview, top-performing products, and regional breakdowns.

## Visual Highlights
### Excel Analysis
Excel File- 

[Excel Summary Chart](https://github.com/Oluwadhemilardey20/Data_Analysis_with_LITA/blob/main/LITA%20Capstone%20Dataset%20SalesData.xlsx)

Excel snapshots- 

[Sales Data Table](https://github.com/Oluwadhemilardey20/Data_Analysis_with_LITA/blob/main/IMG_20241104_134129_314.jpg)

[Sales Data Calculation](https://github.com/Oluwadhemilardey20/Data_Analysis_with_LITA/blob/main/IMG_20241104_134121_374.jpg)

[Sales Data Summary](https://github.com/Oluwadhemilardey20/Data_Analysis_with_LITA/blob/main/IMG_20241104_134046_795.jpg)

[Sales Data Summary2](https://github.com/Oluwadhemilardey20/Data_Analysis_with_LITA/blob/main/IMG_20241104_134104_062.jpg)

### SQL Analysis
Queries to extract subscription trends can be found [here](https://github.com/Oluwadhemilardey20/Data_Analysis_with_LITA/blob/main/LITA%20Capstone%20%20Project-%20Sales%20Data.sql).

### Power BI Dashboard
[Power BI Dashboard](https://github.com/Oluwadhemilardey20/Data_Analysis_with_LITA/blob/main/LITA%20Project%20-%20Sales%20Data.pbix)

Snapshots-

[Sales Visual](https://github.com/Oluwadhemilardey20/Data_Analysis_with_LITA/blob/main/Sales%20visual1.png)

[Sales Visual2](https://github.com/Oluwadhemilardey20/Data_Analysis_with_LITA/blob/main/Sales%20visual%202.png)

## Conclusion
With Shoes being the leading product, rather than a strong reliance on a few top-performing products, inventory management, promotional strategies, and product development should be done
to either reinforce top-performing products or boost the appeal of lower-performing items.

The South is the dominant market, but the East and North regions have a solid share with room to grow. Focusing on the South while implementing tailored strategies in the East and 
North could yield higher overall sales, and exploring growth tactics in the West could increase its market share.

February is the dominant month, but several other months (July, January, and June) show robust performance, indicating potential seasonal trends. Leveraging these insights can help
optimize marketing efforts, inventory, and promotional strategies for maximum impact during peak and lower-demand months.
