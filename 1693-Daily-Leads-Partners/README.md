# 1693. Daily Leads and Partners
**Difficulty:** Easy

## Problem Statement

Table: `DailySales`

| Column Name | Type    |
| :---------- | :------ |
| date_id     | date    |
| make_name   | varchar |
| lead_id     | int     |
| partner_id  | int     |

There is no primary key (column with unique values) for this table. It may contain duplicates.
This table contains the date and the name of the product sold and the IDs of the lead and partner it was sold to.
The name consists of only lowercase English letters.

Write a solution to find for each `date_id` and `make_name`, the number of **distinct** `lead_id`'s and **distinct** `partner_id`'s.

Return the result table in any order.

## Technical Concepts Learned

1. **Multi-Column Grouping (`GROUP BY`)**: Grouping rows by multiple dimensions (`date_id` and `make_name`) to analyze aggregated metrics per category and time.
2. **Distinct Counting (`COUNT(DISTINCT ...)`)**: Filtering out duplicate values within a group before counting, ensuring only unique occurrences are measured.

## Example 1

**Input:** 
DailySales table:
| date_id   | make_name | lead_id | partner_id |
| :-------- | :-------- | :------ | :--------- |
| 2020-12-8 | toyota    | 0       | 1          |
| 2020-12-8 | toyota    | 1       | 0          |
| 2020-12-8 | toyota    | 1       | 2          |
| 2020-12-7 | toyota    | 0       | 2          |
| 2020-12-7 | toyota    | 0       | 1          |
| 2020-12-8 | honda     | 1       | 2          |
| 2020-12-8 | honda     | 2       | 1          |
| 2020-12-7 | honda     | 0       | 1          |
| 2020-12-7 | honda     | 1       | 2          |
| 2020-12-7 | honda     | 2       | 1          |

**Output:** 
| date_id   | make_name | unique_leads | unique_partners |
| :-------- | :-------- | :----------- | :-------------- |
| 2020-12-8 | toyota    | 2            | 3               |
| 2020-12-7 | toyota    | 1            | 2               |
| 2020-12-8 | honda     | 2            | 2               |
| 2020-12-7 | honda     | 3            | 2               |
