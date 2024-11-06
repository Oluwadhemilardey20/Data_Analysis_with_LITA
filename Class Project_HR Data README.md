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

*General insight*:

Total Attrition Count (237) and Rate(16%): Indicates the number of employees who have left the company. An attrition rate of 16% is considered moderate but could indicate underlying issues that may need to be addressed, such as job satisfaction, work environment, or compensation.

Average Age (37 years): The average age suggests a relatively mature workforce, which may affect factors such as career stability, experience, and retention strategies.

**Attrition by Department**: 

R&D Department (133 attritions) has the highest number of attritions, accounting for 56.1% of total attrition. This suggests potential issues specific to this department, such as workload, job satisfaction, management, or career growth challenges. High attrition here could impact innovation and product development.

Sales Department (92 attritions) has the second-highest attrition, representing 38.8% of the total. This is a significant portion, possibly indicating high-pressure environments, targets, or commission structures that may not be meeting employee expectations.

HR Department (12 attritions) shows the lowest attrition rate, with only 5.1% of total attrition. This suggests that employees in this department may have better job satisfaction or working conditions compared to R&D and Sales.

*Recommendations*:

Sales Focus: Review compensation packages, sales targets, and support structures to determine if they align with industry standards and employee expectations.

Enhance support structures, such as providing mentorship programs, career development plans, and mental health resources, particularly in the high-attrition departments (R&D and Sales).

Assess management strategies in both R&D and Sales. Issues with leadership style or communication can lead to dissatisfaction and should be addressed with training or structural adjustments.
Retention Programs:

Implement targeted retention initiatives for R&D and Sales employees. These could include performance incentives, flexible work options, and regular feedback sessions to improve job satisfaction and reduce turnover.
Job Role Evaluation:

Analyze job roles and workloads in R&D to ensure employees are not overburdened. Providing a balance between challenging work and manageable expectations can lead to higher retention.

**Attrition by Education**:

Life Sciences and Medical Fields: The data indicates that employees with educational backgrounds in Life Sciences and Medical fields exhibit relatively high attrition rates. This could mean that roles requiring these backgrounds may come with higher stress, workload, or expectations that contribute to turnover.

Marketing and Technical Degrees: Attrition in Marketing and Technical Degree fields is moderate, suggesting that while these fields may not be experiencing the highest turnover, there could still be issues impacting job satisfaction and retention.

*Recommendations for Improvement*:

Develop retention initiatives specifically tailored for employees in Life Sciences and Medical fields, such as flexible work arrangements, better career progression paths, or professional development opportunities that align with their expertise.

Establish regular feedback mechanisms to understand the concerns of employees in these educational fields. This could involve quarterly surveys or focus groups to identify pain points and areas for improvement.

Provide training opportunities that cater to career advancement, allowing employees to feel valued and motivated to stay with the company. This is particularly relevant for technical or specialized fields where continued learning is essential.

Implement recognition programs that celebrate the contributions of employees from these fields. Publicly acknowledging their hard work can boost morale and job satisfaction.

**Attrition by Gender**:

Males account for 63.3% of total attrition, which indicates that a significant majority of those leaving the company are men. This may reflect specific challenges or dissatisfaction faced by male employees that need further investigation.

Females make up 36.7% of total attrition. While this is a smaller proportion compared to males, it is still notable and requires analysis to understand gender-specific reasons for attrition.

*Recommendations for Improvement*:

Implement surveys or focus groups to understand the reasons behind the higher attrition rates among male employees. This could uncover issues related to work-life balance, career growth, or job expectations.

Ensure that both male and female employees have equal access to opportunities for career advancement and professional development. Address any underlying imbalances that may contribute to dissatisfaction.

Introduce or enhance flexible work arrangements that can benefit both genders but may be particularly effective in addressing attrition linked to work-life balance.

**Attrition by Age group and Gender**: 

Under 25 (38 attritions: 20 males, 18 females): This age group has relatively low attrition compared to older groups but may represent entry-level employees who are exploring career options or finding their first job experience not aligning with expectations.

25-34 (112 attritions: 69 males, 43 females): The 25-34 age group shows the highest attrition rate, suggesting this group may be more prone to job changes due to career growth aspirations, dissatisfaction with current roles, or the search for better opportunities. This group is likely in a phase of building career momentum.

35-44 (51 attritions: 37 males, 14 females): Attrition decreases in the 35-44 age range, but the higher male attrition indicates potential challenges for men in this career stage. These employees may seek leadership roles or more stable career paths.

45-54 (25 attritions: 16 males, 9 females): The attrition rate continues to decline with age, reflecting a more settled workforce that may value job stability. However, the presence of attrition could indicate dissatisfaction related to stagnation or a lack of career advancement.

Over 55 (11 attritions: 8 males, 3 females): This group shows the lowest attrition, which aligns with employees nearing retirement or valuing job security over job changes. It’s a mature group that may stay due to fewer opportunities elsewhere.

*Recommendations for Improvement*:

For the 25-34 age group, introduce programs focused on career progression, upskilling, and leadership training to keep them engaged and reduce turnover.

Implement retention strategies that cater to the needs of each age group. For example, younger employees may appreciate mentorship programs, while older employees might value more flexible working conditions or recognition of long-term service.

Provide recognition programs that appreciate employees' contributions across all age groups. This is especially crucial for the 45-54 and over 55 groups, who may prioritize job stability and respect.

**Marital Status of Employees**:

The majority of employees are married(589), indicating that a significant portion of the workforce may have additional responsibilities outside of work, such as family obligations. This group may prioritize job stability and work-life balance.

Single Employees (350) is the next largest group. They may have different motivations, such as career advancement and personal development opportunities. They could be more open to roles that involve travel or require flexible schedules.

Divorced Employees is the smallest group, suggesting that divorced employees are a minor part of the workforce. While their specific motivations may vary, they could seek stability and supportive work environments.

*Recommendations for Improvement*:
Implement or enhance policies that support work-life balance, such as flexible hours, remote work options, and family leave programs, to accommodate the needs of married employees who make up the majority.

Ensure workplace policies are inclusive and cater to all marital statuses, promoting an environment where every employee feels supported and valued

Introduce or expand wellness programs that include stress management and mental health support, which can be beneficial for employees across all marital statuses, but particularly supportive for those who might face additional challenges (e.g., divorced employees).

Regularly gather feedback from employees on their specific needs related to their marital status and implement initiatives that cater to those needs.
## Visual Highlights

![HR Visual](https://github.com/user-attachments/assets/c96ca772-5ca3-4a9e-b8ea-fd5841750399)



![HR Visual2](https://github.com/user-attachments/assets/7351f4ca-5fbe-47dc-9f17-dbc3062ed4e3)


## Conclusion
High attrition in the R&D and Sales departments needs immediate attention through focused retention strategies and management reviews. In contrast, the lower attrition in HR suggests some practices there could be adapted to improve conditions in other departments.

High attrition in employees from Life Sciences and Medical backgrounds suggests that targeted strategies are necessary to improve retention. Addressing workload, compensation, career development, and work-life balance will be key to reducing turnover and fostering a committed workforce. 

Maintaining a balanced and supportive work environment for both male and female employees is essential for overall workforce stability.
