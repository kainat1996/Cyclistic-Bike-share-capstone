# BIKE SHARE CAPSTONE PROJECT
## Scenario
You are a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in 
Chicago. The director of marketing believes the company’s future success depends on maximizing the 
number of annual memberships. Therefore, your team wants to understand how casual riders and 
annual members use Cyclistic bikes differently. From these insights, your team will design a new 
marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must 
approve your recommendations, so they must be backed up with compelling data insights and 
professional data visualizations.

## Table of contents
* [Company overview]()
* [Task]() 
* [Skills Demonstrated]()
* [Tools used]()
* [Summary]()
* [Approach]()
* [click here to see the Code]()
* [click here to view the Dashboard](https://public.tableau.com/views/CyclisticBikeShareDashboard2022/Dashboard1?:language=en-US&:display_count=n&:origin=viz_share_link)

### Company Overview
In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are
geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime.

Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One
approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and
annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who
purchase annual memberships are Cyclistic members.


Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing
flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will be key to
future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good
chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have
chosen Cyclistic for their mobility needs.


Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do
that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual
riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in
analyzing the Cyclistic historical bike trip data to identify trends.
### Task
**Three questions will guide the future marketing program:**
* How do annual members and casual riders use Cyclistic bikes differently?
* Why would casual riders buy Cyclistic annual memberships?
* How can Cyclistic use digital media to influence casual riders to become members?
## Moreno has assigned you the first question to answer: How do annual members and casual riders use Cyclistic bikes differently?
You will produce a report with the following deliverables:
* A clear statement of the business task
* A description of all data sources used
* Documentation of any cleaning or manipulation of data
* A summary of your analysis
* Supporting visualizations and key findings
* Your top three recommendations based on your analysis

  ### Skills demonstrated
** Some of the skills demonstrated for a pizza sales report are: **
* Data acquisition: Obtained the data made available by Motivate International Inc. 
* Data transformation: I have cleaned, filtered, and transformed data using SQL, a structured query 
language for manipulating and analyzing data. 
* Data modeling: I designed and implemented a data model that represents the relationships and 
attributes of the data entities, such as biketypes, bike stations, member_casual types, and ride times 
and date.
* Data analysis: Performed in-depth data analysis using SQL queries, such as aggregating, grouping, 
sorting, filtering, and joining data. 
* Data visualization: Created interactive and informative visualizations using Tableau, a business 
intelligence tool for creating reports and dashboards. 
* Data interpretation: Derived insights and recommendations from the data analysis and visualizations, 
such as identifying sales trends, customer preferences, product performance. 
* Communication: Able to present and communicate the data analysis and visualizations in a clear and 
concise manner, using appropriate language, format, and style.
### Tools Used
MS OFFICE/ EXCEL: VERSION 2016

SQL BIGQUERY

© 2024 TABLEAU SOFTWARE, LLC, A SALESFORCE COMPANY. ALL RIGHTS RESERVED

### Summary
“Cyclistic” is a hypothetical bike-share company in Chicago aiming to convert casual riders into annual 
members. The marketing team, led by Lily Moreno, plans to achieve this by analyzing usage patterns and 
creating engaging data visualizations. The analysis revealed differences in usage between casual riders 
and annual members, providing insights to help shape their marketing strategy.
### Solution
#### Findings:
* There were six hundred thousand more recorded rides by member riders over casual riders. But 
the casual riders spent more than two times as many minutes in their rides than the member 
riders. Casual riders also experienced a maximum average ride length much higher than than 
that of the member riders per month.
* Casual riders experienced a peak in July while member riders experienced theirs in August. Both 
riders also experienced a year low in January.
* Casual riders went on the most rides on Saturdays whilst member riders went on the the most 
rides on Tuesday.
* The most common rideable type in the recorded period was the classic bike. Both rider types 
recorded the most rides with the classic bike. However, the member riders did not make use of 
the docked bike at all.
* Casuals have the greater max time spent riding, this could be as a result of enjoying the 
ride(pleasure/leisure/exploring) or as a means of exercising.
Some recommendations based on the analysis:
* Implement a limited time promotion tor annual membership that loosens limits on Friday, 
Saturday, Sunday rides, given those are the most popular days casual riders use Cyclistic bikes
* Add more electric bikes to inventory given casual riders prefer them over classic bikes.
* Another way to convert casual riders into full time members could be targeted physical ads and 
campaigns. 
* Targeted premium features could be offered to persuade casual users to join as members to 
meet their goals for riding, mostly on weekends

### Approach:
The first step in the analysis is to define the objective and scope of the Project. This means coming up 
with a clear and specific question or problem that you want to solve with data, such as

**Ask phase:** How do annual members and casual riders use Cyclistic bikes differently?

**Prepare phase:**

Data is located in the form of CSV files in the system. And it is As a disclaimer the data has been made 
available by Motivate International Inc. under this license. It is organized in the table form.
A good data source is ROCCC which stands for Reliable, Original, Comprehensive, Current, and Cited.

Reliable — high — it has 476888 rows

Original — high — provided by the company directly

Comprehensive — high — Parameters match parameters

Current — med — Data is 3 years old and somehow relevent

Cited — high — Data collected from company, hence useful

**Process phase:**

* I imported the tables into SQL bigquery for analysis for cleaning and analyzing.
* I used a union all query to combine the tables. After that, I saved the results into new table for 
analysis.


**I used the new table for cleaning the data**.

* At first I check for the data and removed all the duplicate rows from the data.
* Checked for all the missing and NULL values and remove the data with missing values.
* I used the date column to extract days, months, time into separate columns.
* I used time in seconds for my analysis of bike share data.
* I removed the column where started_at was bigger than ended_at.
* I checked for any typos and then corrected those typos.
  
> **NOTE:** I saved all the queries I used to clean the data in the project file.

After cleaning the data, I saved the cleaned data into separate table for analysis where I analyzed the 
following measures:

**No of rides:** I selected rideable type and used count function for no of rides from the table and 
grouped by rideable type, order by no of rides descending order so that the most Rides comes 
first.

**Most patronized bike types:** Calculated the number of rides by Bike type and user type. 
Grouped the data by bike type and user type and ordered by descending.

**Average length of ride in seconds:** Calculated the average ride length by using Avg function by 
its user types and used the round function for 2 decimal places.

**Most active days:** Calculated the no of rides in a day by its user and bike type

**Max ride length:** calculated the maximum ride length by is user and bike type using MAX 
function.

**Most active month by usertypes:** calculated the most active days by its user and bike type:

## [To view the Code click here]()


