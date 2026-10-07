# 1378. Replace Employee ID With The Unique Identifier
**Difficulty:** Easy

## Problem Statement

Table: `Employees`

| Column Name | Type    |
| :---------- | :------ |
| id          | int     |
| name        | varchar |

`id` is the primary key for this table.
Each row of this table contains the id and the name of an employee in a company.

Table: `EmployeeUNI`

| Column Name | Type |
| :---------- | :--- |
| id          | int  |
| unique_id   | int  |

`(id, unique_id)` is the primary key for this table.
Each row of this table contains the id and the corresponding unique id of an employee in the company.

Write a solution to show the unique ID of each user. If a user does not have a unique ID, replace it with `null`.

Return the result table in any order.

## Technical Concepts Learned

1. **Preserving Records with `LEFT JOIN`**: Using a `LEFT JOIN` ensures that all records from the primary (`Employees`) table are retained, even if there is no matching entry in the lookup (`EmployeeUNI`) table.
2. **Handling Missing Key Matches**: SQL automatically assigns `NULL` values to columns selected from the right table when an `ON` condition fails to find a match during an outer join operation.
3. **Outer Join vs. Aggregation**: Recognized that matching optional scalar values across tables requires simple outer join mechanics rather than data aggregation (`GROUP BY`).

## Example 1

**Input:** 
Employees table:
| id | name     |
| :- | :------- |
| 1  | Alice    |
| 7  | Bob      |
| 11 | Meir     |
| 90 | Winston  |
| 3  | Jonathan |

EmployeeUNI table:
| id | unique_id |
| :- | :-------- |
| 3  | 1         |
| 11 | 2         |
| 90 | 3         |

**Output:** 
| unique_id | name     |
| :-------- | :------- |
| null      | Alice    |
| null      | Bob      |
| 2         | Meir     |
| 3         | Winston  |
| 1         | Jonathan |
