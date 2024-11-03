# Employee Attrition Analysis

## Overview
The primary objective of this project is to analyze employee attrition within the organization. By examining various demographic and employment-related factors, 
we aim to identify trends and predictors of attrition, ultimately providing actionable insights to improve employee retention strategies.

## Data Source 
The primary source of dataset used for this analysis was those provided by facilitators of the program as part of the course. 

## Objectives
1. Understand Attrition Patterns
2. Evaluate Employee Satisfaction and Engagement

## Tool Used
**PowerBI**: For data cleaning, calculations and dashboard creation for data visualization. 

## Exploratory Data Analysis 
### Data Cleaning 
1. Transformed data: to check data consistency using column quality, distribution and profile
2. Promoted header: to make information on the first row the column headings

### Data Analysis 
- Conditional column was created to get attrition count
- Measure was created for attrition rate
- Measure was created for average age of employee

**Formular Used**
```
Attrition Rate = SUM('HR data'[Attrition Count ])/SUM('HR data'[Employee Count])
```
```
Average Age of employees = AVERAGE('HR data'[Age])
```

## Visual Highlights

## Conclusion
