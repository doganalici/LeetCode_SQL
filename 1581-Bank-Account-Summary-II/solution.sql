SELECT US.name, SUM(TRS.amount) AS 'balance' FROM Users US
LEFT JOIN Transactions TRS ON US.account = TRS.account
GROUP BY US.name, US.account
HAVING SUM(TRS.amount)>10000
