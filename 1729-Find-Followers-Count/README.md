# 1729. Find Followers Count
**Difficulty:** Easy

## Problem Statement

Table: `Followers`

| Column Name | Type |
| :---------- | :--- |
| user_id     | int  |
| follower_id | int  |

`(user_id, follower_id)` is the primary key (combination of columns with unique values) for this table.
This table contains the IDs of a user and a follower in a social media app where the follower follows the user.

Write a solution that will, for each user, return the number of followers.

Return the result table ordered by `user_id` in ascending order.

## Technical Concepts Learned

1. **Grouping by Entity (`GROUP BY`)**: Aggregating records per individual user (`user_id`).
2. **Counting Rows (`COUNT`)**: Counting the associated follower records for each distinct user group.
3. **Ordering Results (`ORDER BY`)**: Sorting output rows in ascending order based on the primary identifier.

## Example 1

**Input:** 
Followers table:
| user_id | follower_id |
| :------ | :---------- |
| 0       | 1           |
| 1       | 0           |
| 2       | 0           |
| 2       | 1           |

**Output:** 
| user_id | followers_count |
| :------ | :-------------- |
| 0       | 1               |
| 1       | 1               |
| 2       | 2               |

**Explanation:** 
- The followers of 0 are `{1}` (Count: 1)
- The followers of 1 are `{0}` (Count: 1)
- The followers of 2 are `{0, 1}` (Count: 2)
