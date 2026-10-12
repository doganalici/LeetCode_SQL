# 1581. Bank Account Summary II
**Difficulty:** Easy

## Problem Statement

Table: `Users`

| Column Name  | Type    |
| :----------- | :------ |
| account      | int     |
| name         | varchar |

`account` is the primary key (column with unique values) for this table.
Each row of this table contains the account number of each user in the bank.
There will be no two users having the same name in the table.

Table: `Transactions`

| Column Name   | Type    |
| :------------ | :------ |
| trans_id      | int     |
| account       | int     |
| amount        | int     |
| transacted_on | date    |

`trans_id` is the primary key (column with unique values) for this table.
Each row of this table contains all changes made to all accounts.
`amount` is positive if the user received money and negative if they transferred money.
All accounts start with a balance of 0.

Write a solution to report the `name` and `balance` of users with a balance higher than 10000. The balance of an account is equal to the sum of the amounts of all transactions involving that account.

Return the result table in any order.

## Technical Concepts Learned

1. **Table Joining (`JOIN` / `LEFT JOIN`)**: Combining user account details with transaction logs using the foreign key `account`.
2. **Aggregate Summation (`SUM`)**: Calculating the net account balance by summing positive (deposits) and negative (transfers) transaction amounts.
3. **Filtering Aggregated Results (`HAVING`)**: Applying filtering constraints (`SUM(amount) > 10000`) after group-by aggregation, as opposed to using `WHERE` before grouping.
4. **Group By Primary Key**: Grouping by `US.account` and `US.name` to maintain accurate user-level row aggregation in SQL Server.

## Example 1

**Input:** 
Users table:
| account    | name         |
| :--------- | :----------- |
| 900001     | Alice        |
| 900002     | Bob          |
| 900003     | Charlie      |

Transactions table:
| trans_id   | account    | amount     | transacted_on |
| :--------- | :--------- | :--------- | :------------ |
| 1          | 900001     | 7000       | 2020-08-01    |
| 2          | 900001     | 7000       | 2020-09-01    |
| 3          | 900001     | -3000      | 2020-09-02    |
| 4          | 900002     | 1000       | 2020-09-12    |
| 5          | 900003     | 6000       | 2020-08-07    |
| 6          | 900003     | 6000       | 2020-09-07    |
| 7          | 900003     | -4000      | 2020-09-11    |

**Output:** 
| name       | balance    |
| :--------- | :--------- |
| Alice      | 11000      |

**Explanation:** 
- Alice's balance is (7000 + 7000 - 3000) = 11000.
- Bob's balance is 1000.
- Charlie's balance is (6000 + 6000 - 4000) = 8000.
