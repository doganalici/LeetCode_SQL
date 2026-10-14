# 1683. Invalid Tweets
**Difficulty:** Easy

## Problem Statement

Table: `Tweets`

| Column Name | Type    |
| :---------- | :------ |
| tweet_id    | int     |
| content     | varchar |

`tweet_id` is the primary key (column with unique values) for this table.
`content` consists of alphanumeric characters, '!', or ' ' and no other special characters.
This table contains all the tweets in a social media app.

Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

Return the result table in any order.

## Technical Concepts Learned

1. **String Length Calculation (`LEN`)**: Using the built-in MSSQL function to count the number of characters in a text column.
2. **Numerical Filtering**: Applying strict comparison operators (`> 15`) within the `WHERE` clause to filter rows based on calculated scalar values.

## Example 1

**Input:** 
Tweets table:
| tweet_id | content                           |
| :------- | :-------------------------------- |
| 1        | Let us Code                       |
| 2        | More than fifteen chars are here! |

**Output:** 
| tweet_id |
| :------- |
| 2        |

**Explanation:** 
- Tweet 1 has length = 11. It is a valid tweet.
- Tweet 2 has length = 33. It is an invalid tweet.
