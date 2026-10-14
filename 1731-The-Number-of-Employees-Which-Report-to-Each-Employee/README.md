# 1731. The Number of Employees Which Report to Each Employee
**Difficulty:** Easy

## Problem Statement

Table: `Employees`

| Column Name | Type    |
| :---------- | :------ |
| employee_id | int     |
| name        | varchar |
| reports_to  | int     |
| age         | int     |

`employee_id` is the column with unique values for this table.
This table contains information about the employees and the id of the manager they report to. Some employees do not report to anyone (`reports_to` is null).

For this problem, we will consider a manager an employee who has **at least 1 other employee** reporting to them.

Write a solution to report the IDs and the names of all managers, the number of employees who report directly to them, and the average age of the reports rounded to the nearest integer.

Return the result table ordered by `employee_id`.

## Technical Concepts Learned

1. **Self-Join**: Joining a table to itself (`Employees` joined with `Employees`) to connect managers with their direct reports using the foreign key relationship (`reports_to = employee_id`).
2. **Aggregation Functions (`COUNT` & `AVG`)**: Calculating aggregate metrics (total count of direct reports and average age) for each manager group.
3. **Mathematical Rounding (`ROUND`)**: Using the `ROUND` function to format decimal averages to the nearest integer.
4. **Result Ordering (`ORDER BY`)**: Sorting output records in ascending order based on the manager's identifier.

## Example 1

**Input:** 
Employees table:
| employee_id | name    | reports_to | age |
| :---------- | :------ | :--------- | :-- |
| 9           | Hercy   | null       | 43  |
| 6           | Alice   | 9          | 41  |
| 4           | Bob     | 9          | 36  |
| 2           | Winston | null       | 37  |

**Output:** 
| employee_id | name  | reports_count | average_age |
| :---------- | :---- | :------------ | :---------- |
| 9           | Hercy | 2             | 39          |

**Explanation:** 
Hercy has 2 people report directly to him, Alice and Bob. Their average age is `(41 + 36) / 2 = 38.5`, which rounds to `39`.
