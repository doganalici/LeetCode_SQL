# 1527. Patients With a Condition
**Difficulty:** Easy

## Problem Statement

Table: `Patients`

| Column Name  | Type    |
| :----------- | :------ |
| patient_id   | int     |
| patient_name | varchar |
| conditions   | varchar |

`patient_id` is the primary key (column with unique values) for this table.
`conditions` contains 0 or more code separated by spaces. 
This table contains information of the patients in the hospital.

Write a solution to find the `patient_id`, `patient_name`, and `conditions` of the patients who have Type I Diabetes. Type I Diabetes always starts with the `DIAB1` prefix.

Return the result table in any order.

## Technical Concepts Learned

1. **Prefix Filtering with `LIKE`**: Using pattern matching to filter text data based on specific starting patterns.
2. **Handling Word Boundaries in Strings**: Ensuring that a target substring (`DIAB1`) is matched strictly as a prefix (either at the very beginning of the string or immediately following a space) to avoid false positives (e.g., matching `SADIAB100`).
3. **Combining Conditions with `OR`**: Merging multiple pattern-matching rules to cover different valid positional scenarios within space-separated lists.

## Example 1

**Input:** 
Patients table:
| patient_id | patient_name | conditions   |
| :--------- | :----------- | :----------- |
| 1          | Daniel       | YFEV COUGH   |
| 2          | Alice        |              |
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |
| 5          | Alain        | DIAB201      |

**Output:** 
| patient_id | patient_name | conditions   |
| :--------- | :----------- | :----------- |
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |
