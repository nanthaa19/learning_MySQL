SELECT 
    Cus.Cust_Id,
    Cus.Address,
    Cus.Fed_Id,
    (SELECT 
            SUM(Acc.Avail_Balance)
        FROM
            Account Acc
        WHERE
            Acc.Cust_Id = Cus.Cust_Id) AS Sum_Avail_Balance
FROM
    Customer Cus;

SELECT 
    SUM(AVAIL_BALANCE)
FROM
    account
WHERE
    CUST_ID = 13;
SELECT 
    *
FROM
    account;
    
SELECT 
    *
FROM
    customer;
    
SELECT 
    cust_id, COUNT(cust_id)
FROM
    account
GROUP BY cust_id;

analyze table account;
check table account fast;

start transaction;
commit;