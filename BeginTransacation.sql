BEGIN TRANSACTION;

DELETE VendorsCopy
    Where VendorID = 1;

COMMIT;

ROLLBACK; 

SELECT Top 10 *
    FROM VendorsCopy

--Demonstrates a system to essentially add commits/staging to SQL. Using Commit saves changes (cannot reverse) ROLLBACK undoes any staged changes. 